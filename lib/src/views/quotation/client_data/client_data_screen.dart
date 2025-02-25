import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/const_repositories/enterprise_repository.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
import 'package:multifast/src/views/widgets/back_widget.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/src/views/widgets/text_form_custom.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/const.dart';

class ClientDataScreen extends StatefulWidget {
  const ClientDataScreen({super.key});

  @override
  State<ClientDataScreen> createState() => _ClientDataScreenState();
}

class _ClientDataScreenState extends State<ClientDataScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ClientDataBloc>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cls1,
        leadingWidth: 0,
        leading: SizedBox.shrink(),
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
                  _buildField(context, bloc.numberController, 'Número', 280.w, enabled: false),
                  _buildField(context, bloc.dateController, 'Fecha', 280.w),
                  DrowdownCustom(
                    hintText: 'Validez de Oferta',
                    list: getIt<EnterpriseRepository>().validityOffers,
                    action: (value) {
                      bloc.setExpirationDate(value!);
                    },
                  ),
                  SizedBox(height: 12),
                  _buildField(context, bloc.expirationController, 'Vencimiento', 280.w, enabled: false),
                  Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DrowdownCustom(
                          hintText: 'Moneda',
                          list: constCoins,
                          width: 132,
                          constSelected: constCoins.first,
                          action: (value) {
                            bloc.setCoinType(value!);
                          },
                        ),
                        ValueListenableBuilder(
                          valueListenable: bloc.withExchange,
                          builder: (context, value, child) {
                            return buildTextFormFieldCustom(
                              context,
                              bloc.exchangeController,
                              'Tipo de Cambio',
                              132.w,
                              enabled: value,
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 12, color: AppColors.cls7),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Datos del Cliente', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 12),
                  DrowdownCustom(
                    hintText: 'Tipo Documento',
                    list: constDocumentsTypes,
                    constSelected: constDocumentsTypes.first,
                    action: (value) {},
                  ),
                  SizedBox(height: 12),
                  _buildField(context, bloc.documentController, 'Cliente - Documento', 280.w),
                  _buildField(context, bloc.fullnameController, 'Nombre', 280.w),
                  _buildField(context, bloc.comercialNameController, 'Nombre Comercial', 280.w),
                  _buildField(context, bloc.emailController, 'Correo electrónico', 280.w),
                  _buildField(context, bloc.locationController, 'Dirección', 280.w),
                  _buildField(context, bloc.phone1Controller, 'Teléfono 01', 280.w),
                  _buildField(context, bloc.phone2Controller, 'Teléfono 02', 280.w),
                  _buildField(context, bloc.birthDateController, 'Fecha Nacimiento', 280.w),
                  DrowdownCustom(
                    hintText: 'Sexo',
                    list: constGendersTypes,
                    action: (value) {},
                  ),
                  SizedBox(height: 18),
                ],
              ),
            ),
            Container(height: 12, color: AppColors.cls7),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Detalles Adicionales', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 12),
                  DrowdownCustom(
                    hintText: 'Modo de pago',
                    list: getIt<EnterpriseRepository>().payConditions,
                    action: (value) {},
                  ),
                  SizedBox(height: 12),
                  DrowdownCustom(
                    hintText: 'Tipo de comprobante',
                    list: constDocumentsTypes,
                    action: (value) {},
                  ),
                  SizedBox(height: 12),
                  _buildField(context, bloc.observationController, 'Observaciones', 280.w),
                  _buildField(context, bloc.otherEmailsController, 'Correos de Envío', 280.w),
                ],
              ),
            ),
            Container(height: 12, color: AppColors.cls7),
            Container(
              height: 200.w,
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Datos del Vendedor', style: AppTextStyle.defaultStyle(fontSize: 14, fontW: FontWeight.w700)),
                  SizedBox(height: 15),
                  _buildField(context, bloc.sellerController, 'Vendedor', 280.w),
                  SizedBox(height: 70),
                  SizedBox(
                    width: 280.w,
                    height: 40.h,
                    child: buildAppButtonWithOutExpanded(
                      context,
                      "Actualizar Datos",
                      radiusCircular: 12.w,
                      action: () {
                        print('update data');
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildField(BuildContext context, TextEditingController controller, String hintText, double width,
      {bool enabled = true}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: buildTextFormFieldCustom(context, controller, hintText, width, enabled: enabled),
    );
  }
}
