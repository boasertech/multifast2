import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/quotation_db.dart';
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
          Container(
            //padding: EdgeInsets.only(top: 0.w),
            child: SizedBox(
                height: 30.h,
                width: 80.w,
                child: buildAppButtonWithOutExpanded(
                  context,
                  "Registradas",
                  radiusCircular: 10.r,
                  action: () {},
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: 400.w,
            ),
            //////////
            SizedBox(
              width: 400.w,
              child: TextFormField(
                style: AppTextStyle.cls2Style(),
                decoration: InputDecoration(
                  hintText: "¿Qué Cotización Necesitas?",
                  suffixIcon: Image.asset(
                    AppIcons.filter,
                    scale: 3.0,
                  ),
                  border: OutlineInputBorder(
                      //borderRadius: BorderRadius.circular(6.r)
                      ),
                ),
              ),
            ),
            SizedBox(height: 15),
            DraftContainer(),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 456.w,
              width: 290.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildQuotationContainer(context),
                ],
              ),
            ),
            //////////////////////////////////
            SizedBox(height: 30),
            Container(
              height: 130.w,
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(
                          height: 40.h,
                          width: 280.w,
                          child: buildAppButtonWithOutExpanded(
                            context,
                            "+ Nueva Cotización",
                            radiusCircular: 12.r,
                            action: () async {
                              /*QuotationDb db = QuotationDb();
                              await db.insertUser();
                              final xd = await db.getUsers();
                              for (var i = 0; i < xd.length; i++) {
                                print(xd[i].values.first);
                              }*/
                            },
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildQuotationContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: AppColors.border))),
      child: Row(
        children: [
          Text('100.', style: AppTextStyle.cls2Style(fontSize: 17, color: Color(0xFF868686))),
          Column(
            children: [
              Container(
                height: 38.w,
                width: 181.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                padding: EdgeInsets.only(top: 19.w),
                child: Text('Rosa Angy', style: AppTextStyle.cls2Style(fontSize: 17, color: Color(0xFF272726))),
              ),
              Container(
                height: 38.w,
                width: 181.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                padding: EdgeInsets.only(top: 0.w),
                child: Text('10/01/2025  •  11:20 am\nVend.: VALERIA',
                    style: AppTextStyle.cls2Style(fontSize: 15, color: Color(0xFF868686))),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 38.w,
                width: 68.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                padding: EdgeInsets.only(top: 23.w),
                child: Text('Producto: 03', style: AppTextStyle.cls2Style(fontSize: 12, color: Color(0XFF5A5A59))),
              ),
              Container(
                height: 38.w,
                width: 68.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: AppColors.border),
                ),
                padding: EdgeInsets.only(top: 0.w),
                child: Text('S/9.99', style: AppTextStyle.cls2Style(fontSize: 15, color: Color(0xFFF48E19))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
