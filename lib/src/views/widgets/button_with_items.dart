import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/styles/app_colors.dart';

class ButtonWithItems extends StatefulWidget {
  const ButtonWithItems({
    super.key,
    required this.child,
    this.items,
    this.action,
  });
  final Widget child;
  final List<ButtonWithItems>? items;
  final VoidCallback? action;

  @override
  State<ButtonWithItems> createState() => _GestureWidgetState();
}

class _GestureWidgetState extends State<ButtonWithItems> {
  final GlobalKey _containerKey = GlobalKey();
  Offset _tapPosition = Offset.zero;
  bool over = false;

  void _getTapPosition(TapDownDetails details) {
    /*final RenderBox renderBoxContainer = _containerKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBoxContainer.globalToLocal(details.globalPosition);*/
    Offset originalPosition = details.globalPosition;
    _tapPosition = Offset(originalPosition.dx, originalPosition.dy-62.h);
  }

  void _showContextMenu(BuildContext context) async {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;

    await showMenu(
      context: context,
      position: RelativeRect.fromRect(
        _tapPosition & const Size(40, 20),
        Offset.zero & overlay.size,
      ),
      items: generateMenuItems(widget.items!),
      elevation: 0,
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)), side: BorderSide(width: 1, color: AppColors.border)),
    ).then((value) {
      /*if (value != null) {
        _showContextMenu(context);
      }*/
    });
  }

  List<PopupMenuEntry> generateMenuItems(List<ButtonWithItems> items) {
    return items.map((option) {
      return PopupMenuItem(
        mouseCursor: SystemMouseCursors.click,
        height: kDefaultFontSize,
        padding: const EdgeInsets.all(0),
        enabled: true,
        child: ButtonWithItems(
          items: option.items,
          action: option.action,
          child: option.child,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _containerKey,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(0)),
      child: GestureDetector(
        onTapDown: _getTapPosition,
        onTap: () async {
          if (widget.items != null && widget.items!.isNotEmpty) {
            _showContextMenu(context);
          } else {
            widget.action!();
          }
        },
        child: widget.child,
      ),
    );
  }
}
