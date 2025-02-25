import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/views/quotation/widget/draft_container.dart';
import 'package:multifast/src/views/widgets/buttons_controls.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';

class QuotationScreen extends StatefulWidget {
  const QuotationScreen({super.key});

  @override
  State<QuotationScreen> createState() => _QuotationScreenState();
}

class _QuotationScreenState extends State<QuotationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: SizedBox.shrink(),
        leadingWidth: 0,
        title: Row(
          children: [
            Text("Cotizaciones", style: TextStyle(fontSize: 18, color: Colors.white)),
            Spacer(),
            GestureDetector(
              onTap: () {},
              child: Text('xd'),
            ),
          ],
        ),
        backgroundColor: AppColors.cls1,
        actions: [
          Image.asset(
            AppIcons.restart,
            scale: 1.8,
            color: Colors.white,
          ),
          SizedBox(
            height: 30.h,
            width: 80.w,
            child: buildAppButtonWithOutExpanded(
              context,
              "Registradas",
              radiusCircular: 10.r,
              action: () {},
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          SizedBox(
            child: TextFormField(
              style: AppTextStyle.cls2Style(),
              decoration: InputDecoration(
                  hintText: "¿Qué cotización necesitas?",
                  hintStyle: AppTextStyle.cls9Style(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border, width: 0.7),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColors.border, width: 0.7),
                  ),
                  suffixIcon: Image.asset(AppIcons.filter, scale: 3.5),
                  prefix: SizedBox(width: 15)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: DraftContainer(),
                    ),
                  );
                }
                return _buildQuotationContainer(context);
              },
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 40.h,
            width: 280.w,
            child: buildAppButtonWithOutExpanded(
              context,
              "+ Nueva Cotización",
              radiusCircular: 12.r,
              action: () async {
                context.push('/quotation/create');
                /*QuotationDb db = QuotationDb();
                              await db.insertUser();
                              final xd = await db.getUsers();
                              for (var i = 0; i < xd.length; i++) {
                                print(xd[i].values.first);
                              }*/
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  _buildQuotationContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
      padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h, bottom: 10.h),
      child: Row(
        children: [
          Text('100.', style: AppTextStyle.cls9Style()),
          SizedBox(width: 5.w),
          Column(
            children: [
              Container(
                width: 181.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                child: Text('Rosa Angy', style: AppTextStyle.defaultStyle(fontSize: 15)),
              ),
              Container(
                width: 181.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                child: Text('10/01/2025  •  11:20 am\nVend.: VALERIA',
                    style: AppTextStyle.cls2Style(fontSize: 15, color: Color(0xFF868686))),
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Container(
                width: 68.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                child: Text('Producto: 03', style: AppTextStyle.cls2Style(fontSize: 12, color: Color(0XFF5A5A59))),
              ),
              Container(
                width: 68.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                child: Text('S/9.99', style: AppTextStyle.cls2Style(fontSize: 15, color: Color(0xFFF48E19))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
