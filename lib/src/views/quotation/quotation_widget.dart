import 'package:flutter/material.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/qproduct_widget.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/repositories/product_repository.dart';

class QuotationWidget extends StatelessWidget {
  const QuotationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final qproductsStream = getIt<ProductRepository>().stream;
    return Expanded(
        child: StreamBuilder<List<QProductModel>>(
      stream: qproductsStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          getIt<ProductRepository>().updateStream();
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No hay productos disponibles'));
        }

        final qproducts = snapshot.data ?? [];
        return ListView.builder(
          itemCount: qproducts.length,
          itemBuilder: (context, index) {
            final qproduct = qproducts[index];
            return QProductWidget(qproduct: qproduct);
          },
        );
      },
    ));
  }
}
