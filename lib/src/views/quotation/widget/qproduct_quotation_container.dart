import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class QProductQuotationContainer extends StatefulWidget {
  final QProductQuotation qproduct;
  final Color color;
  const QProductQuotationContainer({super.key, required this.qproduct, this.color = Colors.white});

  @override
  State<QProductQuotationContainer> createState() => _QProductQuotationContainerState();
}

class _QProductQuotationContainerState extends State<QProductQuotationContainer> with SingleTickerProviderStateMixin {
  bool viewOptions = false;
  late AnimationController _controller;
  late Animation<Offset> animation;
  double _dragDistance = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    animation = Tween<Offset>(
      begin: Offset.zero,
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    ));
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _dragDistance += details.primaryDelta!;
      _dragDistance = _dragDistance.clamp(-100.0, 100.0);
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    _controller.forward(from: 0.0).then((_) {
      setState(() {
        _dragDistance = 0.0;
        viewOptions = !viewOptions;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final item = widget.qproduct;
    return GestureDetector(
      onHorizontalDragUpdate: _onHorizontalDragUpdate,
      onHorizontalDragEnd: _onHorizontalDragEnd,
      child: Transform.translate(
        offset: Offset(_dragDistance, 0),
        child: Container(
          decoration:
              BoxDecoration(color: widget.color, border: Border(bottom: BorderSide(color: AppColors.cls7, width: 1.5))),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (!viewOptions) ...[
                        Stack(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Image.asset(
                                AppCoreImages.productDefaultDarkx141,
                                width: 47.w,
                                height: 69.h,
                                fit: BoxFit.contain,
                              ),
                            ),
                            if (widget.qproduct.getUnitDiscountPercent() != 0)
                              Padding(
                                padding: EdgeInsets.only(top: 6.h),
                                child: Container(
                                  height: 13.h,
                                  decoration: BoxDecoration(
                                      color: AppColors.cls4,
                                      borderRadius: BorderRadius.horizontal(right: Radius.circular(4.r))),
                                  child: Text('${widget.qproduct.getUnitDiscountPercent().toStringAsFixed(2)} %',
                                      style: AppTextStyle.clsWhite(fontSize: 10)),
                                ),
                              )
                          ],
                        ),
                      ],
                      SizedBox(width: 10),
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.qproduct.entity.name, style: AppTextStyle.defaultStyle()),
                                Text('Cod: ${item.qproduct.entity.productId}',
                                    style: AppTextStyle.lightStyle(color: AppColors.cls10, fontSize: 13)),
                                Spacer(),
                                Text(item.getAffectationType(),
                                    style: AppTextStyle.lightStyle(color: AppColors.cls10, fontSize: 13)),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('P.U. S/ ${item.getNewPrice().toStringAsFixed(2)}',
                                  style: AppTextStyle.lightStyle(color: AppColors.cls10, fontSize: 11)),
                              Text(
                                'S/ ${item.getNewTotal().toStringAsFixed(2)}',
                                style: AppTextStyle.defaultStyle(fontSize: 13, fontW: FontWeight.bold),
                              ),
                              Spacer(),
                              Container(
                                  width: 25.w,
                                  height: 25.w,
                                  decoration:
                                      BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(6)),
                                  child: Center(
                                      child:
                                          Text(item.quantity.toString(), style: AppTextStyle.clsWhite(fontSize: 20))))
                            ],
                          ),
                        ],
                      )),
                      if (viewOptions) ...[
                        SizedBox(width: 8),
                        GestureDetector(
                          onTap: () {
                            context.push('/sales/quotation/qproduct/detail/true', extra: widget.qproduct);
                          },
                          child: Container(
                            width: 43.w,
                            height: double.infinity,
                            color: AppColors.cls2,
                            child: Image.asset(AppIcons.edit, scale: 2),
                          ),
                        ),
                        Container(
                          width: 43.w,
                          height: double.infinity,
                          color: AppColors.cls5,
                          child: Image.asset(AppIcons.trash, scale: 2),
                        )
                      ]
                    ],
                  ),
                ),
                if (item.observation != null)
                  if (item.observation!.isNotEmpty && widget.color == Colors.white) ...[
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Container(
                        width: 290.w,
                        decoration: BoxDecoration(color: AppColors.cls7, borderRadius: BorderRadius.circular(8.r)),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Observaciones: ${item.observation}',
                                style: AppTextStyle.cls9Style().copyWith(height: 1.1),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    widget.qproduct.observation = null;
                                  });
                                },
                                icon: Icon(Icons.close, color: AppColors.cls9))
                          ],
                        ),
                      ),
                    )
                  ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
