import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';

class ShowMenuWidget extends StatefulWidget {
  const ShowMenuWidget({
    super.key,
    required this.child,
    this.items,
    this.withPadding = false,
    this.onButtonTap,
    this.onButtonDoubleTap,
    this.reverseClic = false,
  });
  final Widget child;
  final List<ShowMenuWidget>? items;
  final bool withPadding;
  final Future<void> Function()? onButtonTap;
  final Future<void> Function()? onButtonDoubleTap;
  final bool reverseClic;

  @override
  State<ShowMenuWidget> createState() => _GestureWidgetState();
}

class _GestureWidgetState extends State<ShowMenuWidget> {
  final GlobalKey _containerKey = GlobalKey();
  Offset _tapPosition = Offset.zero;
  bool over = false;

  void _getTapPosition(TapDownDetails details) {
    final RenderBox renderBoxContainer = _containerKey.currentContext!.findRenderObject() as RenderBox;
    final position = renderBoxContainer.globalToLocal(details.globalPosition);
    Offset originalPosition = details.globalPosition;
    if (widget.withPadding) {
      _tapPosition = originalPosition.translate(renderBoxContainer.size.width - position.dx + 20, -position.dy);
    } else {
      _tapPosition = originalPosition;
    }
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
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(width: 1, color: AppColors.border)),
    ).then((value) {
      /*if (value != null) {
        _showContextMenu(context);
      }*/
    });
  }

  List<PopupMenuEntry> generateMenuItems(List<ShowMenuWidget> items) {
    return items.map((option) {
      return PopupMenuItem(
        mouseCursor: SystemMouseCursors.click,
        height: kDefaultFontSize,
        padding: const EdgeInsets.all(0),
        enabled: true,
        child: ShowMenuWidget(
          withPadding: option.withPadding,
          items: option.items,
          onButtonTap: option.onButtonTap,
          onButtonDoubleTap: option.onButtonDoubleTap,
          reverseClic: option.reverseClic,
          child: option.child,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _containerKey,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
          border: widget.withPadding
              ? null
              : over
                  ? const Border(
                      bottom: BorderSide(color: AppColors.border),
                      top: BorderSide(color: AppColors.border))
                  : const Border(
                      bottom: BorderSide(color: AppColors.border),
                      top: BorderSide(color: AppColors.border))),
      child: Padding(
        padding: widget.withPadding ? const EdgeInsets.only(top: 4, bottom: 4, left: 8, right: 8) : EdgeInsets.zero,
        child: GestureDetector(
            onTapDown: _getTapPosition,
            onTap: () async {
              if (widget.reverseClic) {
                if (widget.items != null && widget.items!.isNotEmpty) {
                  _showContextMenu(context);
                }
              } else {
                if (widget.onButtonTap != null) {
                  widget.onButtonTap!();
                }
              }
            },
            onDoubleTap: widget.onButtonDoubleTap,
            onSecondaryTapDown: _getTapPosition,
            onSecondaryTap: () {
              if (widget.items != null && widget.items!.isNotEmpty) {
                _showContextMenu(context);
              }
            },
            child: MouseRegion(
              onEnter: (event) {
                setState(() {
                  over = true;
                });
              },
              onExit: (event) {
                setState(() {
                  over = false;
                });
              },
              child: Container(
                  height: 26,
                  decoration: BoxDecoration(
                    color: over
                        ? AppColors.border
                        : widget.withPadding
                            ? Colors.white
                            : AppColors.border,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: widget.child),
            )),
      ),
    );
  }
}
