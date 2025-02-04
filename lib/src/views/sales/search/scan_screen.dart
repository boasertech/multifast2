import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/src/generated/qproduct_detail.pb.dart';
import 'package:multifast/src/repositories/branches_repository.dart';
import 'package:multifast/src/repositories/product_repository.dart';
import 'package:multifast/src/views/sales/qproduct_detail/bloc/qproduct_detail_bloc.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  final MobileScannerController _controller = MobileScannerController();
  final repository = getIt<ProductRepository>();
  bool isProcessing = false;

  @override
  void initState() {
    super.initState();
    _controller.start();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cls1,
        iconTheme: IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () => context.pop(),
              child: Icon(Icons.close),
            ),
            SizedBox(width: 12),
            Text('Escaneo de Productos', style: AppTextStyle.big24(fontSize: 18, fontW: FontWeight.w600)),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.flashlight_on_outlined, color: Colors.white),
            onPressed: () => _controller.toggleTorch(),
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
                    controller: _controller,
                    onDetect: (barcodeCapture) async {
                      if (isProcessing) return;
                      final barcode = barcodeCapture.barcodes.first;
                      if (barcode.rawValue != null) {
                        isProcessing = true;
                        _controller.stop();
                        await Future.delayed(Duration(milliseconds: 300));
                        if(!context.mounted) return;
                        final value = barcode.rawValue;
                        final exists = repository.searchByBarCode(value ?? '');
                        if (exists != null) {
                          int branchId = getIt<BranchesRepository>().branchSelected!.entity.branchId.toInt();
                          final request = QProductDetailRequest()
                            ..branchId = branchId
                            ..productId = exists.entity.productId;
                          context.read<QProductDetailBloc>().add(LoadQProductDetailEvent(request, exists));
                        } else {
                          _controller.start();
                        }
                        isProcessing = false;
                      }
                    },
                  ),
                ),
                Positioned.fill(
                  child: Column(
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
                            Spacer(),
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
                    child: Image.asset(AppCoreImages.scanx417),
                  ),
                  SizedBox(height: 15),
                  Text(
                    _centerText(),
                    style: AppTextStyle.defaultStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _centerText() {
    String line1 = 'Posicione el código de barras frente a';
    String line2 = 'la cámara para escanear.';
    final difference = (line1.length - line2.length) / 1.4;
    String spaces = ' ' * difference.toInt();
    String text = '$line1\n$spaces$line2$spaces';
    return text;
  }
}
