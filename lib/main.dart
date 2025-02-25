import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:multifast/core/app_routes.dart';
import 'package:multifast/core/config.dart';
import 'package:multifast/core/setup_locator.dart';
import 'package:multifast/data/services/firebase_service.dart';
import 'package:multifast/firebase_options.dart';
import 'package:multifast/src/local_repositories/sqlite_bd/fastcloud_db.dart';
import 'package:multifast/src/services/abs_auth_service.dart';
import 'package:multifast/src/services/abs_qproduct_detail_service.dart';
import 'package:multifast/src/services/abs_qproduct_service.dart';
import 'package:multifast/src/services/abs_user_service.dart';
import 'package:multifast/src/views/auth/bloc/auth_bloc.dart';
import 'package:multifast/src/views/auth/trip/bloc/trip_bloc.dart';
import 'package:multifast/src/views/auth/update_data/bloc/update_data_bloc.dart';
import 'package:multifast/src/views/home/bloc/navigation_bloc.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
import 'package:multifast/src/views/sales/qproduct_detail/bloc/qproduct_detail_bloc.dart';
import 'package:multifast/src/views/sales/search/bloc/qproduct_bloc.dart';
import 'package:multifast/src/views/sales/search/camera_controller.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!kIsWeb && Platform.isAndroid) {
    try {
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
      await FirebaseService.instance.initializate();
    } catch (e) {
      Config.talker.error(e);
    }
  } else if (!kIsWeb && Platform.isWindows) {
    await windowManager.ensureInitialized();
    WindowOptions windowOptions = const WindowOptions(
      size: Size(1200, 800),
      center: true,
      skipTaskbar: false,
      //titleBarStyle: TitleBarStyle.hidden,
    );
    windowManager.waitUntilReadyToShow(windowOptions, () async {
      await windowManager.show();
      await windowManager.focus();
    });
  }
  setupLocator();
  await FastCloudDb.instance.database;
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (context) => QProductsBloc(service: getIt<AbsQProductService>())),
    BlocProvider(create: (context) => AuthBloc(service: getIt<AbsAuthService>())),
    BlocProvider(create: (context) => QProductDetailBloc(service: getIt<AbsQProductDetailService>())),
    BlocProvider(create: (context) => UpdateDataBloc(service: getIt<AbsUserService>())),
    BlocProvider(create: (context) => NavigationBloc()),
    BlocProvider(create: (context) => ClientDataBloc()),
    ChangeNotifierProvider(create: (context) => CameraControllerProvider()),
    BlocProvider(
      create: (context) {
        final bloc = TripBloc();
        WidgetsBinding.instance.addPostFrameCallback((_) {
          bloc.add(SkipScreenEvent());
        });
        return bloc;
      },
    ),
  ], child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.builder(
      child: Builder(
        builder: (context) {
          final designSize =
              ResponsiveBreakpoints.of(context).largerThan(TABLET) ? const Size(1280, 832) : const Size(320, 692);
          return ScreenUtilInit(
            designSize: designSize,
            builder: (context, child) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                routerConfig: AppRoutes.routes,
              );
            },
          );
        },
      ),
      breakpoints: const [
        Breakpoint(start: 0, end: 599, name: MOBILE),
        Breakpoint(start: 600, end: 1023, name: TABLET),
        Breakpoint(start: 1024, end: double.infinity, name: DESKTOP),
      ],
    );
  }
}
