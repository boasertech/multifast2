import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/views/sales/search/camera_controller.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/actions.dart';

class ScanScreen extends StatefulWidget {
  final bool isQuotation;
  const ScanScreen({super.key, required this.isQuotation});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  final repository = getIt<ProductRepository>();
  bool isProcessing = false;
  bool reload = false;

  @override
  void initState() {
    super.initState();
    context.read<CameraControllerProvider>().startCamera();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void close(BuildContext context) {
    context.read<CameraControllerProvider>().controller.stop();
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.read<CameraControllerProvider>().controller;
    /*final scanAreaSizeWidth = 230.w;
    final scanAreaSizeHeight = 178.h;
    final screenSize = MediaQuery.of(context).size;
    final center = screenSize.center(Offset.zero);
    final scanWindow = Rect.fromCenter(center: center, width: scanAreaSizeWidth, height: scanAreaSizeHeight);*/
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          close(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.cls1,
          iconTheme: IconThemeData(color: Colors.white),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              GestureDetector(
                onTap: () => close(context),
                child: Icon(Icons.close),
              ),
              SizedBox(width: 12),
              Text('Escaneo de Productos', style: AppTextStyle.big24(fontSize: 18, fontW: FontWeight.w600)),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.flashlight_on_outlined, color: Colors.white),
              onPressed: () => controller.toggleTorch(),
            ),
          ],
        ),
        backgroundColor: AppColors.cls1,
        body: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: MobileScanner(
                      controller: controller,
                      //scanWindow: scanWindow,
                      onDetect: (barcodeCapture) async {
                        if (isProcessing) return;
                        if (barcodeCapture.barcodes.isEmpty) return;
                        final barcode = barcodeCapture.barcodes.first;
                        if (barcode.rawValue == null) return;
                        if (barcode.rawValue != null) {
                          isProcessing = true;
                          controller.stop();
                          await Future.delayed(Duration(milliseconds: 300));
                          if (!context.mounted) return;
                          final value = barcode.rawValue;
                          final exists = repository.searchByBarCode(value ?? '');
                          if (exists != null) {
                            actionLoadDetailProduct(context, exists, widget.isQuotation, isScan: true);
                          } else {
                            setState(() {
                              reload = true;
                            });
                          }
                          isProcessing = false;
                        }
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: /*Center(
                      child: Container(
                        width: scanAreaSizeWidth,
                        height: scanAreaSizeHeight,
                        decoration: BoxDecoration(
                          color: Colors.amber.withValues(alpha: 0.3)
                        ),
                      ),
                    )*/
                        Column(
                      children: [
                        Container(
                          height: 65.h,
                          decoration: BoxDecoration(color: AppColors.cls10.withValues(alpha: 0.35)),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: 45.w,
                                decoration: BoxDecoration(color: AppColors.cls10.withValues(alpha: 0.35)),
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 25.w,
                                    height: 25.w,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(color: Colors.white, width: 3),
                                            left: BorderSide(color: Colors.white, width: 3))),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 25.w,
                                    height: 25.w,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.white, width: 3),
                                            left: BorderSide(color: Colors.white, width: 3))),
                                  ),
                                ],
                              ),
                              if (reload) ...[
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      reload = false;
                                      controller.start();
                                    });
                                  },
                                  child: SizedBox(
                                    width: 33.w,
                                    child: Image.asset(AppIcons.reload),
                                  ),
                                ),
                                Spacer(),
                              ] else ...[
                                Spacer(),
                              ],
                              Column(
                                children: [
                                  Container(
                                    width: 25.w,
                                    height: 25.w,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            top: BorderSide(color: Colors.white, width: 3),
                                            right: BorderSide(color: Colors.white, width: 3))),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: 25.w,
                                    height: 25.w,
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(color: Colors.white, width: 3),
                                            right: BorderSide(color: Colors.white, width: 3))),
                                  ),
                                ],
                              ),
                              Container(
                                width: 45.w,
                                decoration: BoxDecoration(color: AppColors.cls10.withValues(alpha: 0.35)),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 65.h,
                          decoration: BoxDecoration(color: AppColors.cls10.withValues(alpha: 0.35)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      width: 134.w,
                      height: 106.h,
                      child: Image.asset(reload ? AppCoreImages.notSearchedx256 : AppCoreImages.scanx417),
                    ),
                    SizedBox(height: 15),
                    Text(
                      _centerText(reload),
                      style: AppTextStyle.defaultStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _centerText(bool reload) {
    String line1 = reload ? 'No pudimos detectar el código.' : 'Posicione el código de barras frente a';
    String line2 = reload ? 'Intenta escanerlo nuevamente, por favor' : 'la cámara para escanear.';
    final difference = (line1.length - line2.length) / 1.4;
    String spaces = ' ' * difference.toInt();
    String text = '$line1\n$spaces$line2$spaces';
    return text;
  }
}
