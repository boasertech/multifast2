import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/controllers/new_quotation_controller.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
import 'package:multifast/src/views/quotation/widget/qproduct_quotation_container.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class NewQuotationScreen extends StatefulWidget {
  const NewQuotationScreen({super.key});

  @override
  State<NewQuotationScreen> createState() => _NewQuotationScreenState();
}

class _NewQuotationScreenState extends State<NewQuotationScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<ClientDataBloc, ClientDataState>(
      listener: (context, state) {
        if (state is LoadClientData) {
          context.push('/client_data');
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppColors.cls1,
          leadingWidth: 0,
          titleSpacing: 10,
          title: Row(
            children: [
              Icon(Icons.close, color: Colors.white),
              SizedBox(width: 10),
              Text('Nueva Cotización', style: AppTextStyle.clsWhite()),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColors.cls4.withValues(alpha: 0.09),
                      border: Border.all(color: AppColors.cls4),
                      borderRadius: BorderRadius.circular(6.r)),
                  padding: EdgeInsets.only(left: 10.w, top: 6.h, bottom: 6.h, right: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Detalles', style: AppTextStyle.cls2Style()),
                          Text('dni', style: AppTextStyle.cls2Style(color: AppColors.cls4))
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          context.read<ClientDataBloc>().add(EditClientData());
                        },
                        icon: Image.asset(AppIcons.editPen, scale: 2),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border, width: 0.6))),
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 240.w,
                      height: 20.h,
                      child: ValueListenableBuilder<TextEditingValue>(
                        valueListenable: context.read<QProductsBloc>().searchController,
                        builder: (context, value, child) {
                          return TextFormField(
                            controller: context.read<QProductsBloc>().searchController,
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(borderSide: BorderSide.none),
                                hintText: '¿Deseas agregar un producto?',
                                hintStyle: AppTextStyle.lightStyle(fontSize: 14, fontW: FontWeight.w500),
                                suffixIcon: value.text.isEmpty
                                    ? null
                                    : GestureDetector(
                                        onTap: () {
                                          context.read<QProductsBloc>().searchController.text = '';
                                          getIt<ProductRepository>().updateTempStrem();
                                        },
                                        child: Image.asset(AppIcons.cancel, scale: 2))),
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                context.push('/sales/search/true');
                              }
                            },
                          );
                        },
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        context.push('/sales/search/scan');
                      },
                      child: SizedBox(
                        width: 16.r,
                        height: 16.r,
                        child: Image.asset(AppIcons.scanner),
                      ),
                    ),
                    SizedBox(width: 10.w),
                    GestureDetector(
                      onTap: () {
                        context.push('/sales/filter');
                      },
                      child: SizedBox(
                        width: 16.r,
                        height: 16.r,
                        child: Image.asset(AppIcons.filter),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                child: Text('Productos', style: AppTextStyle.cls2Style()),
              ),
              Container(
                height: 300.h,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: ValueListenableBuilder(
                  valueListenable: getIt<NewQuotationController>().notifierList,
                  builder: (context, value, child) {
                    if (value.isNotEmpty) {
                      return ListView.builder(
                        itemCount: value.length,
                        itemBuilder: (context, index) {
                          final item = value[index];
                          return QProductQuotationContainer(qproduct: item);
                        },
                      );
                    }
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Opacity(opacity: 0.4, child: Image.asset(AppOptionsImages.salesQuotation, width: 148.w)),
                          SizedBox(height: 20.h),
                          Opacity(
                            opacity: 0.4,
                            child: SizedBox(
                              width: 200.w,
                              child: Text(
                                  'Aún no hay productos en esta cotización. Busca y selecciona los productos para empezar',
                                  style: AppTextStyle.cls10Style(fontSize: 15),
                                  textAlign: TextAlign.center),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(height: 10, color: AppColors.cls7),
              ValueListenableBuilder(
                valueListenable: getIt<NewQuotationController>().notifierList,
                builder: (context, value, child) {
                  return Column(
                    children: [
                      Container(
                        height: 250.h,
                        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Resumen', style: AppTextStyle.defaultStyle()),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text('Ítems', style: AppTextStyle.cls10Style()), Text('${value.length}')],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text('Moneda', style: AppTextStyle.cls10Style()), Text('PEN')],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Tipo de Cambio', style: AppTextStyle.cls10Style()),
                                  Text(0.toString())
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [Text('IGV', style: AppTextStyle.cls10Style()), Text('S/ ${0.toString()}')],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: AppColors.border, width: 0.7))),
                              padding: EdgeInsets.only(top: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sub-total', style: AppTextStyle.cls10Style()),
                                  Text('S/ ${0.toString()}')
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Aplicar Descuento'),
                                Switch(
                                  value: isSwitched,
                                  onChanged: (value) {
                                    setState(() {
                                      isSwitched = value;
                                    });
                                  },
                                  activeColor: Colors.green,
                                  inactiveThumbColor: Colors.grey,
                                  inactiveTrackColor: Colors.grey[300],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Total Final', style: AppTextStyle.defaultStyle(fontW: FontWeight.w600)),
                                Text('S/ ${getIt<NewQuotationController>().getTotal().toStringAsFixed(2)}',
                                    style: AppTextStyle.defaultStyle(fontW: FontWeight.bold))
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: buildAppButtonRow(context,
                            'Total: S/ ${getIt<NewQuotationController>().getTotal().toStringAsFixed(2)}', 'Guardar',
                            radiusCircular: 12),
                      ),
                      SizedBox(height: 10.h)
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
