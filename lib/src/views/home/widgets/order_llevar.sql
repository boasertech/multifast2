USE [BD_FAST]
GO
/****** Object:  StoredProcedure [dbo].[p_api_rest_DPedidoLlevar_Registrar_v11]    Script Date: 11/02/2025 11:36:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- v8 add campo @iMCanal
ALTER PROCEDURE [dbo].[p_api_rest_DPedidoLlevar_Registrar_v11]
	@iDPedido BIGINT=0,
	@tJson VARCHAR(MAX),
	@tCliente VARCHAR(250) = '',
	@tEmpresaRuc VARCHAR(11),
	@iDSucursal BIGINT = 0,
	@iUsuarioRegistro INT = 0,
	@tVersionApp varchar(20),
	@iDFormatoOrden bigint=null,
    @iConexion int,
    @tAndroInfo varchar(50)=null,
	@iMCanalTipoVenta int = 2
AS
BEGIN
	BEGIN TRANSACTION
		BEGIN TRY
			DECLARE @iNumero BIGINT, @iNumeroCanal BIGINT, @iDCajaDiaria BigInt, @horaDelPedido varchar(30)

			IF(ISNULL(@tCliente,'')='')
				BEGIN
					SELECT -1, 'Debe ingresar el nombre del cliente', CAST(0 AS BIGINT);
					RETURN;
				END

			IF(@iDSucursal<=0)
				BEGIN
					SELECT -2, 'Código de sucursal inválido', CAST(0 AS BIGINT);
					RETURN;
				END

			IF(@iUsuarioRegistro<=0 and @tVersionApp <> 'TiendaOnline')
				BEGIN
					SELECT -3, 'Código de mesero inválido', CAST(0 AS BIGINT);
					RETURN;
				END

			IF NOT EXISTS(SELECT * FROM DCAJA_DIARIA DCD INNER JOIN MCAJA C ON DCD.iMCaja = C.iMCaja AND DCD.iDSucursal = @iDSucursal AND DCD.iEstado = 1 AND DCD.lEliminado = 0 AND DCD.iMoneda = 1 AND C.lComanda = 1)
				BEGIN
					SELECT -4, 'No existe una caja aperturada para la sucursal', CAST(0 AS BIGINT);
					RETURN;
				END

			IF((SELECT COUNT(*) FROM DCAJA_DIARIA DCD INNER JOIN MCAJA C ON DCD.iMCaja = C.iMCaja AND DCD.iDSucursal = @iDSucursal AND DCD.iEstado = 1 AND DCD.lEliminado = 0 AND DCD.iMoneda = 1 AND C.lComanda = 1) > 1)
				BEGIN
					SELECT -5, 'Existe más de una caja abierta para la sucursal', CAST(0 AS BIGINT);
					RETURN;
				END
	
			SET @iDCajaDiaria = (SELECT DCD.iDCajaDiaria FROM DCAJA_DIARIA DCD INNER JOIN MCAJA C ON DCD.iMCaja = C.iMCaja AND DCD.iDSucursal = @iDSucursal AND DCD.iEstado = 1 AND DCD.lEliminado = 0 AND DCD.iMoneda = 1 AND C.lComanda = 1);

			IF EXISTS(SELECT * FROM DCAJA_DIARIA DCD WHERE DCD.iDCajaDiaria = @iDCajaDiaria AND DCD.lEliminado = 1)
				BEGIN
					SELECT -6, 'La caja seleccionada se encuentra eliminada',CAST(0 AS BIGINT)
					RETURN;
				END
	
			IF NOT EXISTS(SELECT * FROM DCAJA_DIARIA DCD WHERE DCD.iDCajaDiaria = @iDCajaDiaria AND DCD.iEstado = 1)
				BEGIN
					SELECT -7, 'La caja seleccionada no esta abierta',CAST(0 AS BIGINT)
					RETURN;
				END

			IF NOT EXISTS(SELECT * FROM OPENJSON(@tJson,'$.Items'))
				BEGIN
					SELECT -8, 'Debe agregar al menos 1 producto', CAST(0 AS bigint);
					RETURN;
				END

			IF @iDPedido<>0
			BEGIN
				IF NOT EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.lEliminado = 0)
					BEGIN
						SELECT -9, 'El pedido no existe o a sido eliminado', CAST(@iDPedido AS bigint);
						RETURN;
					END

				IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.iEstado = 2)
					BEGIN
						SELECT -10, 'No puede agregar platos, el pedido se encuentra cerrado', CAST(@iDPedido AS bigint);
						RETURN;
					END

				IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.iEstado = 3)
					BEGIN
						SELECT -11, 'No puede agregar platos, el pedido se encuentra anulado', CAST(@iDPedido AS bigint);
						RETURN;
					END
				IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido AND DP.iEstadoEnvio = 1)
					BEGIN
						SELECT -12, 'No puede agregar platos, el pedido ya fue entregado', CAST(@iDPedido AS bigint);
						RETURN;
					END

				IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido and iMCanal=@iMCanalTipoVenta AND isnull(DP.iEstadoPago,0) = 1)
					BEGIN
						SELECT -13, 'El Pedido ya está Pagado', CAST(0 AS bigint);
						RETURN;
					END

				IF EXISTS(SELECT * FROM DPEDIDO DP WHERE DP.iDPedido = @iDPedido and iMCanal=@iMCanalTipoVenta AND isnull(DP.iEstadoEnvio,0) = 1)
					BEGIN
						SELECT -14, 'El Pedido ya está entregado', CAST(0 AS bigint);
						RETURN;
					END

			END

			if @iDPedido =0
			begin
				SET @iNumero=(ISNULL((SELECT MAX(iNumero) FROM DPEDIDO WHERE iDSucursal=@iDSucursal),0))+1;
				SET @iNumeroCanal=(ISNULL((SELECT MAX(iNumeroCanal) FROM DPEDIDO WHERE iDSucursal=@iDSucursal AND iMCanal=@iMCanalTipoVenta AND iDCajaDiaria=@iDCajaDiaria),0))+1;
				INSERT INTO DPEDIDO(tEmpresaRuc, iDSucursal, imcliente,	iNumero, iMCanal, nTotal, iEstado, fFechaRegistro, iUsuarioRegistro, iMozo, lEliminado, tClienteMesa, iNumeroCanal, iDCajaDiaria, lApi, tVersionApp)
				VALUES(	@tEmpresaRuc, @iDSucursal, 0, @iNumero,	@iMCanalTipoVenta, 0, 1, GETDATE(), @iUsuarioRegistro,@iUsuarioRegistro, 0, UPPER(LTRIM(RTRIM(@tCliente))), @iNumeroCanal, @iDCajaDiaria,	1, @tVersionApp)
				SET @iDPedido = SCOPE_IDENTITY();
				set @horaDelPedido =  ISNULL((SELECT time_ FROM fn_datetime_to_string(GETDATE())),'')
			end
			else 
				begin 
					set @iNumeroCanal = (SELECT iNumeroCanal FROM DPEDIDO WHERE iDSucursal=@iDSucursal AND iMCanal=@iMCanalTipoVenta AND iDCajaDiaria=@iDCajaDiaria and iDPedido = @iDPedido);
					set @horaDelPedido = ISNULL( (select time_ from fn_datetime_to_string((select ffecharegistro from dpedido where idpedido = @iDPedido))) ,'');
					SET @iNumero = (SELECT iNumero FROM DPEDIDO WHERE iDSucursal=@iDSucursal AND iMCanal=@iMCanalTipoVenta AND iDCajaDiaria=@iDCajaDiaria and iDPedido = @iDPedido)
				end

			DECLARE @iNumeroOrden BIGINT
			SET @iNumeroOrden=(ISNULL((SELECT MAX(iNumeroOrden) FROM DPEDIDO_DETALLE DPD WHERE DPD.iDPedido = @iDPedido),0))+1;
			DECLARE @zonasTotales TABLE(iMImpresora BIGINT, is_urgent bit)
			DECLARE @lStockRestaurante bit = 0
			declare @idSucusal BIGINT = (SELECT iDSucursal FROM DPEDIDO WHERE iDPedido = @iDPedido)
			SET @lStockRestaurante = (SELECT TOP 1 lStockRestaurante FROM empresas where id_ruc = @tEmpresaRuc)
			declare @lMultiPrintConfig BIT = (SELECT top 1 ISNULL(lMultiPrintConfig, 0) FROM EMPRESAS WHERE id_ruc like @tEmpresaRuc)


			DECLARE @InsertePedidoDetalle TABLE(iDPedidoDetalle BIGINT, iMProducto BIGINT);
			INSERT INTO DPEDIDO_DETALLE(iDPedido, iMProducto, nCantidad, tUnidadMedida,	nPrecio, nTotal, nPrecioAdicional, iEstadoPago,	nCantidadPago,	nPendientePago,	tObservaciones,	lCortesia,	iNumeroOrden, iTipoConsumo,	lApi, fRegistro, iMUsuario, llUrgente, lEnviadoOrden, id_estado_cocina, fecha_estado_cocina, precioBase, tipoPrecioEdit, iMImpresoraPiso, iDStock)
			OUTPUT INSERTED.iDPedidoDetalle, INSERTED.iMProducto INTO @InsertePedidoDetalle
			SELECT @iDPedido, detalle.iMProducto, detalle.nCantidad, MP.UnidadMedida, detalle.nPrecioUnitario+isnull(detalle.nPrecioAdicional,0), detalle.nTotal, detalle.nPrecioAdicional,	1, 0, detalle.nCantidad, detalle.tObservacion, detalle.lCortesia, @iNumeroOrden, detalle.iTipoConsumo, 1, getdate(), @iUsuarioRegistro, isUrgent, 1, 1, getdate(), detalle.precioBase, detalle.tipoPrecioEdit, detalle.iMImpresoraPiso, detalle.iDStock
			FROM OPENJSON(@tJson,'$.Items')
			WITH(iMProducto BIGINT, nCantidad DECIMAL(18,2), nPrecioUnitario DECIMAL(18,2), nTotal DECIMAL(18,2),nPrecioAdicional DECIMAL(18,2),iTipoConsumo DECIMAL(18,2), lCortesia BIT, iTipoConsumo INT, tObservacion VARCHAR(MAX), isUrgent BIT, precioBase DECIMAL(18,2), tipoPrecioEdit INT, iMImpresoraPiso bigint, iDStock bigint) as detalle
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
			inner join @InsertePedidoDetalle pd ON P.iMProducto = pd.iMProducto


			DECLARE @nTotal DECIMAL(18,2);
			SET @nTotal = (SELECT SUM(detalle.nTotal) FROM OPENJSON(@tJson,'$.Items') WITH (nTotal DECIMAL(18,2), lCortesia BIT) AS detalle WHERE detalle.lCortesia = 0);

			UPDATE DPEDIDO SET nTotal = (SELECT ISNULL(SUM(PD.nTotal), 0.00) FROM  DPEDIDO_DETALLE PD  WHERE   (PD.lEliminado is null or PD.lEliminado=0) and lCortesia=0 AND iDPedido=@iDPedido) WHERE iDPedido=@iDPedido;


			-- INSERTAR EN LA TABLA DPEDIDO_COCINA POR ORDEN (SI EN LA ORDEN HAY ITEMS QUE ESTAN EN 3 ZONAS SE DEBERIA REFLEJAR AHI )

			
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

			DECLARE @zonasImpresion VARCHAR(MAX) = '';
			IF (EXISTS(SELECT 1 FROM @zonasTotales))
			BEGIN
				DECLARE @InsertedCocina TABLE(iDPedidoCocina BIGINT, iMImpresora BIGINT );
					INSERT INTO [BD_FAST].[dbo].DPEDIDO_COCINA( iDPedido, iNumeroOrden, iMImpresora, iMCategoria, lEliminado, creadoPor, fechaRegistro, tRucEmpresa, is_urgent )
				OUTPUT inserted.idPedidoCocina, inserted.iMImpresora  INTO @InsertedCocina
				SELECT @iDPedido, @iNumeroOrden, z.iMImpresora, 0, 0, @iUsuarioRegistro, GETDATE(), @tEmpresaRuc, z.is_urgent
					FROM @zonasTotales z
					 
				INSERT INTO [BD_FAST].[dbo].DPEDIDO_ESTADOS (iDPedido, iDEstado, habilitado, fechaRegistro, duracion, numeroOrden, iMImpresora, id_pedido_cocina)
				SELECT @iDPedido, 1, 1, GETDATE(), '00:00:00', @iNumeroOrden, cocina.iMImpresora, cocina.idPedidoCocina
				FROM @InsertedCocina cocina

				SELECT @zonasImpresion = COALESCE(@zonasImpresion + '|', '') + CONVERT(VARCHAR(MAX), iMImpresora)
				FROM @zonasTotales;
			END
			
			insert into DPEDIDO_ORDEN(iDPedido,iMUsuarioRegistro,fFechaRegistro,tDispositivo,iDFormato,iNumeroOrden,lGenerado)
			values(@iDPedido,@iUsuarioRegistro,getdate(),@tAndroInfo,@iDFormatoOrden,@iNumeroOrden,0)

			--if @iConexion=2
			--begin
			--	insert into DPEDIDO_ORDEN(iDPedido,iMUsuarioRegistro,fFechaRegistro,tDispositivo,iDFormato,iNumeroOrden,lGenerado)
			--	values(@iDPedido,@iUsuarioRegistro,getdate(),@tAndroInfo,@iDFormatoOrden,@iNumeroOrden,0)
			--end
			--SELECT 0,cast(@iDPedido as varchar(10)), @iNumeroOrden;

			
			SELECT 0, 'El Pedido ha sido registrado exitosamente', @iDPedido, @iNumeroCanal, @horaDelPedido, @iNumero, @iNumeroOrden, @zonasImpresion;

			COMMIT TRANSACTION; 
		END TRY
	BEGIN CATCH
		SELECT -12, ERROR_MESSAGE(), CAST(0 AS bigint);
	END CATCH
END


