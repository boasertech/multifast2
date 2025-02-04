import 'package:flutter/material.dart';
import 'package:multifast/src/models/qproduct_model.dart';

class QProductWidget extends StatefulWidget {
  final QProductModel qproduct;
  const QProductWidget({super.key, required this.qproduct});

  @override
  State<QProductWidget> createState() => _QProductWidgetState();
}

class _QProductWidgetState extends State<QProductWidget> {
  @override
  Widget build(BuildContext context) {
    final qproduct = widget.qproduct;
    return Container(
      color: qproduct.isSelected ? Colors.amber : Colors.blueGrey,
      child: GestureDetector(
        onTap: () {
          setState(() {
            qproduct.isSelected = !qproduct.isSelected;
          });
        },
        child: ListTile(title: Text(qproduct.entity.name)),
      ),
    );
  }
}
