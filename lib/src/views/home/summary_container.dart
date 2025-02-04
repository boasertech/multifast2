import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/views/home/widgets/summary_detail.dart';
import 'package:multifast/styles/app_text_style.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Resumen general',
                style: AppTextStyle.subtitleSecondary,
              ),
              Text(
                'Todo lo que necesitas saber en un solo lugar. Revisa las cifras clave del día.',
                style: AppTextStyle.subtitleFastOption,
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              SizedBox(
                height: 320,
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  childAspectRatio: 1,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 6),
                      child: SummaryDetail(name: 'Ventas\nRealizadas'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 6),
                      child: SummaryDetail(name: 'Productos con Bajo Stock'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 6),
                      child: SummaryDetail(name: 'Cotizaciones en Proceso'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15, left: 6),
                      child: SummaryDetail(name: 'Cotizaciones Generadas'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
