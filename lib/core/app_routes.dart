import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:multifast/src/models/qproduct_model.dart';
import 'package:multifast/src/models/qproduct_quotation.dart';
import 'package:multifast/src/views/auth/handle_login_screen.dart';
import 'package:multifast/src/views/auth/trip/handle_trip_screen.dart';
import 'package:multifast/src/views/auth/update_data/update_data_screen.dart';
import 'package:multifast/src/views/home/handle_home_navigation.dart';
import 'package:multifast/src/views/quotation/client_data/bloc/client_data_bloc.dart';
import 'package:multifast/src/views/quotation/client_data/client_data_screen.dart';
import 'package:multifast/src/views/quotation/detail_qproduct_quotation.dart';
import 'package:multifast/src/views/quotation/new_quotation_screen.dart';
import 'package:multifast/src/views/quotation/quotation_screen.dart';
import 'package:multifast/src/views/sales/qproduct_detail/qproduct_screen.dart';
import 'package:multifast/src/views/sales/sales_screen.dart';
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
        builder: (context, state) => const HandleHomeNavigation(),
      ),
      GoRoute(
        path: '/sales/search/:isQuotation',
        name: 'search',
        builder: (context, state) {
          final isQuotation = (state.pathParameters['isQuotation'] ?? 'false') == 'true';
          return QProductSearchScreen(isQuotation: isQuotation);
        },
      ),
      GoRoute(
        path: '/sales/search/scan/:isQuotation',
        name: 'scanner',
        builder: (context, state) {
          final isQuotation = (state.pathParameters['isQuotation'] ?? 'false') == 'true';
          return ScanScreen(isQuotation: isQuotation);
        },
      ),
      GoRoute(
        path: '/sales/qproduct/detail/:isScan/:isQuotation',
        name: 'qproduct',
        builder: (context, state) {
          final qproduct = state.extra as QProductModel;
          final isScan = state.pathParameters['isScan'] == 'true';
          final isQuotation = state.pathParameters['isQuotation'] == 'true';
          return QProductScreen(qproduct: qproduct, isScan: isScan, isQuotation: isQuotation);
        },
      ),
      GoRoute(
        path: '/sales/filter',
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
        path: '/client_data/:onlySee',
        name: 'client data',
        builder: (context, state) {
          final onlySee = state.pathParameters['onlySee'] == 'true';
          return ClientDataScreen(onlySee: onlySee);
        },
      ),
      GoRoute(
        path: '/sales',
        name: 'sales',
        builder: (context, state) => SalesScreen(),
      ),
      GoRoute(
        path: '/quotation',
        name: 'quotation',
        builder: (context, state) {
          context.read<ClientDataBloc>().add(LoadQuotationEvent());
          return QuotationScreen();
        },
      ),
      GoRoute(
        path: '/quotation/create/:isEdit/:onlySee',
        name: 'quotation create',
        builder: (context, state) {
          final isEdit = state.pathParameters['isEdit'] == 'true';
          final onlySee = state.pathParameters['onlySee'] == 'true';
          return NewQuotationScreen(isEdit: isEdit, onlySee: onlySee);
        },
      ),
      GoRoute(
        path: '/sales/quotation/qproduct/detail/:isEdit/:index/:onlySee',
        name: 'qproduct quotation detail',
        builder: (context, state) {
          final qproduct = state.extra as QProductQuotation;
          final isEdit = state.pathParameters['isEdit'] == 'true';
          final index = int.parse(state.pathParameters['index'] ?? '0');
          final onlySee = state.pathParameters['onlySee'] == 'true';
          return DetailQProductQuotation(qproduct: qproduct, isEdit: isEdit, index: index, onlySee: onlySee);
        },
      ),
    ],
  );
}
