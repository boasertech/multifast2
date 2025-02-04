import 'package:go_router/go_router.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/views/auth/handle_login_screen.dart';
import 'package:multifast/src/views/auth/trip/handle_trip_screen.dart';
import 'package:multifast/src/views/home/home_screen.dart';
import 'package:multifast/src/views/sales/qproduct_detail/qproduct_screen.dart';
import 'package:multifast/src/views/sales/search/filter_screen.dart';
import 'package:multifast/src/views/sales/search/qproduct_search_screen.dart';
import 'package:multifast/src/views/sales/search/scan_screen.dart';

class AppRoutes {
  static final routes = GoRouter(
    initialLocation: '/trip',
    routes: [
      GoRoute(
        path: '/auth',
        name: 'login',
        builder: (context, state) => const HandleLoginScreen(),
      ),
      GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
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
        path: '/sales/qproduct/detail',
        name: 'qproduct',
        builder: (context, state) {
          final qproduct = state.extra as QProductModel;
          return QProductScreen(qproduct: qproduct);
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
    ],
  );
}
