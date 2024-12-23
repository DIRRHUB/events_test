import 'package:events_test/presentation/search/page/search_page.dart';
import 'package:events_test/start/routing/route_names.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

class MainRouter {
  MainRouter() {
    GoRouter.optionURLReflectsImperativeAPIs = true;
  }

  late GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: RoutePath.search,
    routerNeglect: true,
    routes: [
      GoRoute(
        path: RoutePath.search,
        name: RouteName.search,
        builder: (context, state) {
          return const SearchPage();
        },
      ),
    ],
  );
}
