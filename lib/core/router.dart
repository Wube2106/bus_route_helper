import 'package:go_router/go_router.dart';

import '../features/auth/presentation/sign_in_screen.dart';
import '../features/compare/presentation/compare_screen.dart';
import '../features/map/presentation/map_screen.dart';
import '../features/routes/presentation/route_details_screen.dart';
import '../features/saved/presentation/saved_screen.dart';
import '../features/search/presentation/home_screen.dart';
import '../features/search/presentation/results_screen.dart';
import 'app_shell.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) => AppShell(shell: shell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
            routes: [
              GoRoute(
                path: 'results',
                builder: (context, state) => const ResultsScreen(),
              ),
              GoRoute(
                path: 'compare',
                builder: (context, state) => const CompareScreen(),
              ),
              GoRoute(
                path: 'route/:id',
                builder: (context, state) => RouteDetailsScreen(
                  routeId: state.pathParameters['id']!,
                ),
              ),
            ],
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/map',
            builder: (context, state) =>
                MapScreen(routeId: state.uri.queryParameters['route']),
          ),
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
            path: '/saved',
            builder: (context, state) => const SavedScreen(),
            routes: [
              GoRoute(
                path: 'sign-in',
                builder: (context, state) => const SignInScreen(),
              ),
            ],
          ),
        ]),
      ],
    ),
  ],
);