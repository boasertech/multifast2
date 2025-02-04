import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/styles/app_text_style.dart';

class OptionMenu extends StatefulWidget {
  final int index;
  final String moduleName;
  final String iconName;
  final String? route;

  const OptionMenu({
    super.key,
    required this.index,
    required this.moduleName,
    required this.iconName,
    this.route,
  });

  @override
  State<OptionMenu> createState() => _OptionMenuState();
}

class _OptionMenuState extends State<OptionMenu> {
  double _leftPadding(int index) {
    if ((index + 2) % 3 == 0) {
      return 10;
    }
    return 5;
  }

  double _rightPadding(int index) {
    if (index % 3 == 0) {
      return 10;
    }
    return 5;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(widget.route ?? ''),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 7,
              child: Padding(
                padding: EdgeInsets.only(left: _leftPadding(widget.index).w, right: _rightPadding(widget.index).w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      widget.iconName,
                      width: 52.r,
                      height: 50.r,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 6),
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  widget.moduleName,
                  style: AppTextStyle.subtitleFastOption,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
