import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/auth/trip/bloc/trip_bloc.dart';
import 'package:multifast/styles/app_colors.dart';
import 'package:multifast/styles/app_images.dart';
import 'package:multifast/styles/app_text_style.dart';
import 'package:multifast/utils/actions.dart';

class HandleTripScreen extends StatelessWidget {
  const HandleTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess) {
          actionLoadProducts(context);
          actionLoadDataEnterprise();
          context.go('/');
        } else if (state is AuthInitial || state is AuthError) {
          context.go('/auth');
        }
      },
      child: BlocConsumer<TripBloc, TripState>(
        builder: (context, state) {
          if (state is TripScreen1 || state is TripScreen2 || state is TripScreen3) {
            final TripData trip;
            bool isStart = false;
            if (state is TripScreen1) {
              trip = state.trip;
            } else if (state is TripScreen2) {
              trip = state.trip;
            } else {
              state as TripScreen3;
              trip = state.trip;
              isStart = true;
            }
            return Scaffold(
              backgroundColor: AppColors.cls1,
              appBar: AppBar(
                backgroundColor: AppColors.cls1,
              ),
              body: Stack(
                children: [
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [Image.asset(trip.image, scale: trip.scale), SizedBox(height: trip.height.h)],
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                width: 168.w,
                                height: 51.h,
                                child: Image.asset(AppImages.mainLogo),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 240.h,
                          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 24.h, bottom: 14.h),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.only(topLeft: Radius.circular(17.r), topRight: Radius.circular(17.r))),
                          child: Column(
                            children: [
                              Text(
                                trip.title,
                                style:
                                    AppTextStyle.cls2Style(fontSize: 28, fontW: FontWeight.w600).copyWith(height: 1.2),
                              ),
                              SizedBox(height: 6),
                              Text(trip.subTitle, style: AppTextStyle.cls2Style(fontW: FontWeight.w400, fontSize: 16)),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  //Text('xd'),
                                  GestureDetector(
                                    onTap: () {
                                      context.read<TripBloc>().add(ChangeScreenEvent());
                                    },
                                    child: Container(
                                      width: isStart ? 94.w : 57.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                        color: AppColors.cls5,
                                        borderRadius: BorderRadius.circular(12.r),
                                      ),
                                      child: isStart
                                          ? Center(child: Text('Empezar', style: AppTextStyle.clsWhite()))
                                          : Image.asset(AppIcons.rightArrowTail, scale: 1.7),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          if (state is TripScreenVersion || state is TripInitApp) {
            return Center(
              child: Image.asset(AppImages.mainLogo),
            );
          }
          return Text('xd');
        },
        listener: (context, state) {
          if (state is TripInitApp) {
            context.read<AuthBloc>().add(AutoLoginEvent());
          }
        },
      ),
    );
  }
}
