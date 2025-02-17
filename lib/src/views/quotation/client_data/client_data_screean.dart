import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/widgets/back_widget.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_form_style.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/const.dart';

class ClientDataScreean extends StatefulWidget {
  const ClientDataScreean({super.key});

  @override
  State<ClientDataScreean> createState() => _ClientDataScreeanState();
}

class _ClientDataScreeanState extends State<ClientDataScreean> {
  final List<String> _opciones = ['Boleta', 'Factura'];
  final List<String> _opcionesOferta = ['4 Días', '5 Días', '6 Días', '7 Días'];
  final List<String> _tipoDocumento = ['DNI', 'Carnet de Extranjería'];
  final List<String> _Sexo = ['Masculino', 'Femenino', 'No especificar'];
  final List<String> _modoPago = ['Contado'];
  final List<String> _formatoDocumento = ['Formato Ticket'];

  String? _opcionSeleccionada;
  String? _opcionesValidez;
  String? _opcionDocumento;
  String? _opcionSexualidad;
  String? _opcionPago;
  String? _opcionFormato;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cls1,
        title: Row(
          children: [
            BackWidget(color: Colors.white),
            Text('Información de la Cotización', style: AppTextStyle.clsWhite())
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Detalle de Documento', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Número'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Fecha'),
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.w,
                          padding: EdgeInsets.only(left: 12.w, top: 4.w),
                          child: Text(
                            'Validez de Oferta',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 280.w,
                          height: 25.w,
                          padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
                          child: DropdownButtonFormField<ConstValue>(
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.withOutBorders(),
                            icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                            items: constDocumentsTypes.map((ConstValue value) {
                              return DropdownMenuItem<ConstValue>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                //documentType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 12),
                  _buildTextField(context, 'Vencimiento'),
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.w,
                          padding: EdgeInsets.only(left: 12.w, top: 4.w),
                          child: Text(
                            'Tipo de Comprobante',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 280.w,
                          height: 25.w,
                          padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
                          child: DropdownButtonFormField<ConstValue>(
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.withOutBorders(),
                            icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                            items: constDocumentsTypes.map((ConstValue value) {
                              return DropdownMenuItem<ConstValue>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                //documentType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColors.border),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 15.w,
                              padding: EdgeInsets.only(left: 12.w, top: 4.w),
                              child: Text(
                                'Moneda',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              width: 132.w,
                              height: 25.w,
                              child: TextFormField(
                                  style: AppTextStyle.cls2Style(), decoration: AppTextFormStyle.withOutBorders()),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: AppColors.border),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 15.w,
                              padding: EdgeInsets.only(left: 12.w, top: 4.w),
                              child: Text(
                                'Tipo de Cambio',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              width: 132.w,
                              height: 25.w,
                              child: TextFormField(
                                  style: AppTextStyle.cls2Style(), decoration: AppTextFormStyle.withOutBorders()),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  //----------------------------------------
                  Text('Datos del Cliente', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.w,
                          padding: EdgeInsets.only(left: 12.w, top: 4.w),
                          child: Text(
                            'Tipo de Documento',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 280.w,
                          height: 25.w,
                          padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
                          child: DropdownButtonFormField<ConstValue>(
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.withOutBorders(),
                            icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                            items: constDocumentsTypes.map((ConstValue value) {
                              return DropdownMenuItem<ConstValue>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                //documentType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Cliente - Documento'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Nombre'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Nombre Comercial'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Correo electrónico'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Dirección'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Teléfono 01'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Teléfono 02'),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Fecha Nacimiento'),
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.w,
                          padding: EdgeInsets.only(left: 12.w, top: 4.w),
                          child: Text(
                            'Sexo',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 280.w,
                          height: 25.w,
                          padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
                          child: DropdownButtonFormField<ConstValue>(
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.withOutBorders(),
                            icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                            items: constDocumentsTypes.map((ConstValue value) {
                              return DropdownMenuItem<ConstValue>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                //documentType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 200.w,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Detalles Adicionales', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.w,
                          padding: EdgeInsets.only(left: 12.w, top: 4.w),
                          child: Text(
                            'Modo de Pago',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 280.w,
                          height: 25.w,
                          padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
                          child: DropdownButtonFormField<ConstValue>(
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.withOutBorders(),
                            icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                            items: constDocumentsTypes.map((ConstValue value) {
                              return DropdownMenuItem<ConstValue>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                //documentType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: AppColors.border),
                        borderRadius: BorderRadius.circular(6.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 15.w,
                          padding: EdgeInsets.only(left: 12.w, top: 4.w),
                          child: Text(
                            'Formato de Documento',
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Container(
                          width: 280.w,
                          height: 25.w,
                          padding: EdgeInsets.only(left: 12.w, right: 10, top: 0),
                          child: DropdownButtonFormField<ConstValue>(
                            style: AppTextStyle.cls2Style(),
                            decoration: AppTextFormStyle.withOutBorders(),
                            icon: Image.asset(AppIcons.downArrow, scale: 1.8),
                            items: constDocumentsTypes.map((ConstValue value) {
                              return DropdownMenuItem<ConstValue>(
                                value: value,
                                child: Text(value.name),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                //documentType = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  _buildTextField(context, 'Observaciones'),
                  SizedBox(height: 12),
                ],
              ),
            ),
            SizedBox(height: 12),
            Container(
              height: 200.w,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Detalles Adicionales', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 15),
                  _buildTextField(context, 'Vendedor'),
                  SizedBox(height: 80),
                  SizedBox(
                    width: 280.w,
                    height: 40.h,
                    child: buildAppButtonWithOutExpanded(context, "Actualizar Datos", radiusCircular: 12.w),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(BuildContext context, String hintText) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: AppColors.border), borderRadius: BorderRadius.circular(6.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 15.h,
            padding: EdgeInsets.only(left: 12.w, top: 4.w),
            child: Text(
              hintText,
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(
            width: 280.w,
            height: 25.h,
            child: Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w),
              child: TextFormField(style: AppTextStyle.cls2Style(), decoration: AppTextFormStyle.withOutBorders()),
            ),
          ),
        ],
      ),
    );
  }
}
