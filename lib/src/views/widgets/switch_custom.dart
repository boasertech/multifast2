import 'package:flutter/material.dart';
import 'package:multifast/styles/app_colors.dart';

/*class SwitchCustom extends StatefulWidget {
  const SwitchCustom({super.key});

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  @override
  Widget build(BuildContext context) {
    return buildSwtichCustom(context, isSwitched);
  }
}*/

Widget buildSwtichCustom(BuildContext context, bool isSwitched, void Function(bool) action) {
  return StatefulBuilder(builder: (context, setState) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSwitched = !isSwitched;
          action(isSwitched);
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 40,
        height: 22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: isSwitched ? AppColors.cls4 : AppColors.cls9, width: 2),
          color: isSwitched ? AppColors.cls4 : AppColors.cls9,
        ),
        child: Align(
          alignment: isSwitched ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 17,
            height: 17,
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  });
}
