import 'package:go_router/go_router.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/views/auth/handle_login_screen.dart';
import 'package:multifast/src/views/auth/trip/handle_trip_screen.dart';
import 'package:multifast/src/views/auth/update_data/update_data_screen.dart';
import 'package:multifast/src/views/home/handle_home_navigation.dart';
import 'package:multifast/src/views/quotation/client_data/client_data_screean.dart';
import 'package:multifast/src/views/quotation/quotation_screen.dart';
import 'package:multifast/src/views/sales/qproduct_detail/qproduct_screen.dart';
import 'package:multifast/src/views/sales/sales_screen.dart';
import 'package:multifast/src/views/sales/search/filter_screen.dart';
import 'package:multifast/src/views/sales/search/qproduct_search_screen.dart';
import 'package:multifast/src/views/sales/search/scan_screen.dart';

class AppRoutes {
  static final routes = GoRouter(
    initialLocation: '/trip',
    //initialLocation: '/quotation',
    routes: [
      GoRoute(
        path: '/auth',
        name: 'login',
        builder: (context, state) => const HandleLoginScreen(),
      ),
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HandleHomeNavigation(),
      ),
      GoRoute(
        path: '/sales/search',
        name: 'search',
        builder: (context, state) => QProductSearchScreen(),
      ),
      GoRoute(
        path: '/sales/search/scan',
        name: 'scanner',
        builder: (context, state) => ScanScreen(),
      ),
      GoRoute(
        path: '/sales/qproduct/detail/:isScan',
        name: 'qproduct',
        builder: (context, state) {
          final qproduct = state.extra as QProductModel;
          final isScan = state.pathParameters['isScan'] == 'true';
          return QProductScreen(qproduct: qproduct, isScan: isScan);
        },
      ),
      GoRoute(
        path: '/sales/search/filter',
        name: 'filter',
        builder: (context, state) => FilterScreen(),
      ),
      GoRoute(
        path: '/trip',
        name: 'trip',
        builder: (context, state) => HandleTripScreen(),
      ),
      GoRoute(
        path: '/update_data/:userId',
        name: 'update data',
        builder: (context, state) {
          final userId = int.parse(state.pathParameters['userId'] ?? '0');
          return UpdateDataScreen(userId: userId);
        },
      ),
      GoRoute(
        path: '/client_data',
        name: 'client data',
        builder: (context, state) => ClientDataScreean(),
      ),
      GoRoute(
        path: '/sales',
        name: 'sales',
        builder: (context, state) => SalesScreen(),
      ),
      GoRoute(
        path: '/quotation',
        name: 'quotation',
        builder: (context, state) => QuotationScreen(),
      ),
    ],
  );
}
