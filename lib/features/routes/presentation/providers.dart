import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/in_memory_route_repository.dart';
import '../domain/models.dart';
import '../domain/route_repository.dart';

/// The one place that decides which repository the app uses.
/// In Milestone 2 only this line changes to a REST or drift version.
final routeRepositoryProvider = Provider<RouteRepository>(
  (ref) => InMemoryRouteRepository(),
);

/// Popular destinations for the Home screen.
final popularStopsProvider = FutureProvider<List<Stop>>(
  (ref) => ref.watch(routeRepositoryProvider).popularStops(),
);

/// The type filter on Route Results: null means "All".
class TypeFilterNotifier extends Notifier<TransportType?> {
  @override
  TransportType? build() => null;

  void select(TransportType? type) => state = type;
}

final typeFilterProvider =
    NotifierProvider<TypeFilterNotifier, TransportType?>(
  TypeFilterNotifier.new,
);