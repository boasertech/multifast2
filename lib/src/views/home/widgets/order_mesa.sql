USE [BD_FAST]
GO
/****** Object:  StoredProcedure [dbo].[p_api_rest_DPedidoDetalle_Registrar_V12]    Script Date: 11/02/2025 11:31:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- DEVOLVER ZONA DE IMPRESION
ALTER PROCEDURE [dbo].[p_api_rest_DPedidoDetalle_Registrar_V12]
	@iDPedido BIGINT,
	@tJson VARCHAR(MAX),
	@iDFormatoOrden bigint=null,
    @iConexion int,
    @iUsuario bigint=null,
    @tAndroInfo varchar(50)=null
AS
BEGIN
	BEGIN TRANSACTION
		BEGIN TRY
			IF NOT EXISTS(SELECT * FROM OPENJSON(@tJson,'$.Items'))
				BEGIN
					SELECT -1, 'Debe agregar al menos 1 producto', CAST(0 AS bigint),'';
					RETURN;
				END

			IF NOT EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.lEliminado = 0)
				BEGIN
					SELECT -2, 'El pedido no existe o a sido eliminado', CAST(0 AS bigint),'';
					RETURN;
				END

			IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.iEstado = 2)
				BEGIN
					SELECT -3, 'No puede agregar platos, el pedido se encuentra cerrado', CAST(0 AS bigint),'';
					RETURN;
				END

			IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.iEstado = 3)
				BEGIN
					SELECT -4, 'No puede agregar platos, el pedido se encuentra anulado', CAST(0 AS bigint),'';
					RETURN;
				END

			IF(@iDPedido = 0)
				BEGIN
					SELECT -5, 'El código del pedido inválido', CAST(0 AS bigint),'';
					RETURN;
				END

			declare @immesaf bigint = (select immesa from dpedido where idpedido = @iDPedido)
			IF EXISTS(SELECT * FROM mmesa WHERE immesa = @immesaf and immesaprincipal is not null )
				BEGIN
					SELECT -6, 'La mesa esta bloqueada porque esta unida a otra.', CAST(0 AS bigint),'';
					RETURN;
				END

			/*IF EXISTS(SELECT * FROM DPEDIDO_DETALLE_PRECUENTA WHERE idPedido = @iDPedido)
				BEGIN
					SELECT -7, 'Se dividió la precuenta, no puede agregar más productos', CAST(0 AS bigint),'';
					RETURN;
				END*/

			DECLARE @iNumeroOrden BIGINT
			SET		@iNumeroOrden = (ISNULL((SELECT MAX(iNumeroOrden) FROM DPEDIDO_DETALLE DPD WHERE DPD.iDPedido = @iDPedido),0))+1;
			DECLARE @tEmpresaRuc VARCHAR(255), @lStockRestaurante bit = 0
			SET	    @tEmpresaRuc = (SELECT TOP 1 EmpresaId FROM [BD_FAST].[dbo].USUARIOS U INNER JOIN [BD_FAST].[dbo].DETALLE_USUARIO_EMPRESA UE ON U.UsuarioId = UE.UsuarioId WHERE U.UsuarioId = @iUsuario )
			SET @lStockRestaurante = (SELECT TOP 1 lStockRestaurante FROM empresas where id_ruc = @tEmpresaRuc)

			declare @idSucusal BIGINT = (SELECT iDSucursal FROM DPEDIDO WHERE iDPedido = @iDPedido)
			DECLARE @iDAlmacen bigint = 0, @iCantidad decimal(18,2) = 0, @iCantidadSinCobrar decimal(18,2) = 0
			--select @iDAlmacen = iDAlmacen from ALMACEN where idsucursal = @idSucusal and lpredeterminado = 1

			DECLARE @InsertePedidoDetalle TABLE(iDPedidoDetalle BIGINT, iMProducto BIGINT);
			INSERT INTO DPEDIDO_DETALLE(iDPedido, iMProducto, nCantidad, tUnidadMedida, nPrecio, nTotal, nPrecioAdicional, iEstadoPago, nCantidadPago, nPendientePago, tObservaciones, lCortesia, iNumeroOrden, iTipoConsumo, lApi, fRegistro, iMUsuario, llUrgente, iMotCortesia, iMotCortesiaDet, id_estado_cocina, fecha_estado_cocina, precioBase, tipoPrecioEdit, iMImpresoraPiso, iDStock)
			OUTPUT INSERTED.iDPedidoDetalle, INSERTED.iMProducto INTO @InsertePedidoDetalle
			SELECT @iDPedido, detalle.iMProducto, detalle.nCantidad, MP.UnidadMedida, detalle.nPrecioUnitario+isnull(detalle.nPrecioAdicional,0), detalle.nTotal, detalle.nPrecioAdicional, 1, 0, detalle.nCantidad, detalle.tObservacion, detalle.lCortesia, @iNumeroOrden, detalle.iTipoConsumo, 1, getdate(), @iUsuario, detalle.isUrgent, detalle.iMotCortesia, detalle.iMotCortesiaDet, 1, getdate(), detalle.precioBase, detalle.tipoPrecioEdit, detalle.iMImpresoraPiso, detalle.iDStock
			FROM OPENJSON(@tJson,'$.Items')
			WITH(iMProducto BIGINT, nCantidad DECIMAL(18,2), nPrecioUnitario DECIMAL(18,2), nTotal DECIMAL(18,2),nPrecioAdicional DECIMAL(18,2),iTipoConsumo DECIMAL(18,2), lCortesia BIT, iTipoConsumo INT, tObservacion VARCHAR(MAX), isUrgent BIT, iMotCortesia BIGINT, iMotCortesiaDet BIGINT, precioBase DECIMAL(18,2), tipoPrecioEdit int, iMImpresoraPiso bigint, iDStock bigint) as detalle
			LEFT JOIN MPRODUCTO MP ON MP.iMProducto = detalle.iMProducto
			where @lStockRestaurante = 0 or (
				ISNULL(MP.lMostrarKardex,0) = 0 OR (
					ISNULL(MP.lImpresoraPiso, 0) = 0 OR (
						(select ISNULL(iCantidad,0) from DALMACEN_STOCK where iDStock = detalle.iDStock) - ISNULL((select sum(dp.ncantidad) from dpedido_detalle dp inner join dpedido p on dp.idpedido = p.idpedido 
						where p.idsucursal = @idSucusal and ISNULL(dp.lEliminado, 0) = 0 and dp.iEstadoPago = 1 and dp.iMProducto = detalle.iMProducto and 
						ISNULL(p.lEliminado,0) = 0 and dp.iDStock = detalle.iDStock),0) >= detalle.nCantidad
					)
				) 
			)
			/*select top 100 * from dpedido_detalle
			select top 100 * from MPRODUCTO where empresaid_ruc like '12345696321' and tdescripcion like '%inka%'
			select top 100 * from dalmacen_stock where improducto = 697642
			select distinct mp.* from MPRODUCTO mp left join dalmacen_stock das on mp.improducto = das.improducto where mp.improducto = 697642
			where @lStockRestaurante = 0  or (DAS.iDStock = detalle.iDStock and (MP.LMOSTRARKARDEX = 0 or (DAS.iCantidad - ISNULL((select SUM(dp.nCantidad) from DPEDIDO_DETALLE dp inner join DPEDIDO p ON dp.idpedido = p.idpedido 
				where p.idsucursal = @idSucusal and ISNULL(dp.lEliminado, 0) = 0 and dp.iEstadoPago = 1 and dp.iMProducto = detalle.iMProducto
				and ISNULL(p.lEliminado,0) = 0), 0) >= detalle.nCantidad and MP.LMOSTRARKARDEX = 1)))*/
			IF NOT EXISTS (SELECT 1 FROM @InsertePedidoDetalle)
			BEGIN 
				SELECT -9,'No hay stock suficiente en los productos', @iNumeroOrden, '';
				RETURN;
			END

			insert into DPEDIDO_DETALLE_CARACTERISTICA(id_pedido_detalle, id_tipo_caracteristica, descripcion_caracteristica, id_producto, precio_producto, fecha_registro)
			SELECT
				pd.iDPedidoDetalle,
				PR.iMPropiedad,
				PR.tPropiedad,
				PR.iMProducto,
				PR.nPrecioAdicional,
				getdate()
			FROM OPENJSON(@tJson, '$.Items') 
			WITH (
				iMProducto bigint,
				operadores NVARCHAR(MAX) AS JSON
			) AS P
			CROSS APPLY OPENJSON(P.operadores)
			WITH (
				iMOperador bigint,
				tOperador varchar(max),
				propiedades NVARCHAR(MAX) AS JSON
			) AS O
			CROSS APPLY OPENJSON(O.propiedades)
			WITH (
				iMPropiedad bigint,
				tPropiedad varchar(max),
				nPrecioAdicional decimal(18,2),
				iMProducto bigint
			) AS PR
			inner JOIN @InsertePedidoDetalle pd ON P.iMProducto = pd.iMProducto

			DECLARE @nTotal DECIMAL(18,2);
			SET @nTotal = (SELECT SUM(detalle.nTotal) FROM OPENJSON(@tJson,'$.Items') WITH (nTotal DECIMAL(18,2), lCortesia BIT) AS detalle WHERE detalle.lCortesia = 0);

			UPDATE DPEDIDO SET nTotal = (SELECT ISNULL(SUM(PD.nTotal), 0.00) FROM  DPEDIDO_DETALLE PD  WHERE (PD.lEliminado is null or PD.lEliminado=0) and lCortesia=0 AND iDPedido=@iDPedido) WHERE iDPedido=@iDPedido;

			-- INSERTAR EN LA TABLA DPEDIDO_COCINA POR ORDEN (SI EN LA ORDEN HAY ITEMS QUE ESTAN EN 3 ZONAS SE DEBERIA REFLEJAR AHI )

			DECLARE @zonasTotales TABLE(iMImpresora BIGINT, is_urgent bit)
			declare @lMultiPrintConfig BIT = (SELECT top 1 ISNULL(lMultiPrintConfig, 0) FROM EMPRESAS WHERE id_ruc like @tEmpresaRuc)

			INSERT INTO @zonasTotales(iMImpresora, is_urgent)
				SELECT DISTINCT imp.iMImpresora, case when detalle.isUrgent = 1 then 1 else 0 end as is_urgent
				-- SELECT DISTINCT imp.iMImpresora, 0
				FROM OPENJSON(@tJson, '$.Items')
				WITH (iMProducto BIGINT, isUrgent bit) AS detalle
				CROSS APPLY (
					SELECT ICA.iMImpresora, ICA.iMCategoria
					FROM [BD_FAST].[dbo].MPRODUCTO  P 
					RIGHT JOIN [BD_FAST].[dbo].MIMPRESORA_CATEGORIA ICA ON P.iMCategoria = ICA.iMCategoria 
					INNER JOIN [BD_FAST].[dbo].MIMPRESORA  IM ON IM.iMImpresora = ICA.iMImpresora
					WHERE P.EmpresaId_ruc = @tEmpresaRuc AND 
					P.iMProducto = detalle.iMProducto AND 
					P.lActivo = 1 AND ICA.lActivo = 1 AND
					IM.iDSucursal = @idSucusal AND ((@lmultiprintconfig = 0) or (@lmultiprintconfig = 1 and isnull(IM.isTablet,0) = 1))
				) AS imp
	
			--INSERT INTO [BD_FAST].[dbo].DPEDIDO_COCINA( iDPedido, iNumeroOrden, iMImpresora, iMCategoria, lEliminado, creadoPor, fechaRegistro, iMProducto )
			--OUTPUT inserted.idPedidoCocina, inserted.iMImpresora, inserted.iMProducto  INTO @InsertedCocina
			--SELECT @iDPedido, @iNumeroOrden, imp.iMImpresora, imp.iMCategoria, 0, @iUsuario, GETDATE(), detalle.iMProducto, pedDetalle.iDPedidoDetalle
			--FROM OPENJSON(@tJson, '$.Items')
			--WITH (iMProducto BIGINT) AS detalle
			--CROSS APPLY (
			--	SELECT ICA.iMImpresora, ICA.iMCategoria
			--	FROM [BD_FAST].[dbo].MPRODUCTO  P 
			--	RIGHT JOIN [BD_FAST].[dbo].MIMPRESORA_CATEGORIA ICA ON P.iMCategoria = ICA.iMCategoria 
			--	WHERE P.EmpresaId_ruc = @tEmpresaRuc AND P.iMProducto = detalle.iMProducto AND P.lActivo = 1 AND ICA.lActivo = 1
			--) AS imp
			--INNER JOIN @InsertePedidoDetalle pedDetalle ON detalle.iMProducto = pedDetalle.iMProducto;
			DECLARE @zonasImpresion VARCHAR(MAX) = '';
			IF (EXISTS(SELECT 1 FROM @zonasTotales))
			BEGIN
				DECLARE @InsertedCocina TABLE(iDPedidoCocina BIGINT, iMImpresora BIGINT );
					INSERT INTO [BD_FAST].[dbo].DPEDIDO_COCINA( iDPedido, iNumeroOrden, iMImpresora, iMCategoria, lEliminado, creadoPor, fechaRegistro, tRucEmpresa, is_urgent )
				OUTPUT inserted.idPedidoCocina, inserted.iMImpresora  INTO @InsertedCocina
				SELECT @iDPedido, @iNumeroOrden, z.iMImpresora, 0, 0, @iUsuario, GETDATE(), @tEmpresaRuc, z.is_urgent
					FROM @zonasTotales z
					 
				INSERT INTO [BD_FAST].[dbo].DPEDIDO_ESTADOS (iDPedido, iDEstado, habilitado, fechaRegistro, duracion, numeroOrden, iMImpresora, id_pedido_cocina)
				SELECT @iDPedido, 1, 1, GETDATE(), '00:00:00', @iNumeroOrden, cocina.iMImpresora, cocina.idPedidoCocina
				FROM @InsertedCocina cocina

				SELECT @zonasImpresion = COALESCE(@zonasImpresion + '|', '') + CONVERT(VARCHAR(MAX), iMImpresora)
				FROM @zonasTotales;
			END
			
			insert into DPEDIDO_ORDEN(iDPedido,iMUsuarioRegistro,fFechaRegistro,tDispositivo,iDFormato,iNumeroOrden,lGenerado)
			values(@iDPedido,@iUsuario,getdate(),@tAndroInfo,@iDFormatoOrden,@iNumeroOrden,0)

			/*
			IF @iConexion=2
			begin
				insert into DPEDIDO_ORDEN(iDPedido,iMUsuarioRegistro,fFechaRegistro,tDispositivo,iDFormato,iNumeroOrden,lGenerado)
				values(@iDPedido,@iUsuario,getdate(),@tAndroInfo,@iDFormatoOrden,@iNumeroOrden,0)
			end
			*/
			
			SELECT 0,'Registro guardado correctamente', @iNumeroOrden, @zonasImpresion;

			COMMIT TRANSACTION; 
		END TRY
	BEGIN CATCH
		SELECT -5, ERROR_MESSAGE(), CAST(0 AS bigint),'';
		ROLLBACK TRANSACTION;  
	END CATCH
END

