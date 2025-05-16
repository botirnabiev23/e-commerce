import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:market_place/core/di/injection.dart';
import 'package:market_place/features/basket/presentation/blocs/basket/basket_bloc.dart';
import 'package:market_place/features/basket/presentation/pages/basket_page.dart';
import 'package:market_place/features/home/presentation/pages/meals_page.dart';
import 'package:market_place/features/main/main_page.dart';
import 'package:market_place/router/app_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.home.path,
  routes: [
    StatefulShellRoute.indexedStack(
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.home.path,
              name: AppRoutes.home.name,
              builder: (_, state) => const MealsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.basket.path,
              name: AppRoutes.basket.name,
              builder: (_, state) => const BasketPage(),
            ),
          ],
        ),
      ],
      builder: (_, __, navigationShell) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<BasketBloc>(
              create: (_) => getIt<BasketBloc>(),
            ),
          ],
          child: MainPage(
            navigationShell: navigationShell,
          ),
        );
      },
    ),
  ],
);
