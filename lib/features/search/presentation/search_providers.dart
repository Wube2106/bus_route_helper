import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';

/// What the user chose on the Home screen (stop ids, null = not chosen yet).
typedef JourneyQuery = ({String? fromId, String? toId});

class JourneyQueryNotifier extends Notifier<JourneyQuery> {
  @override
  JourneyQuery build() => (fromId: null, toId: null);

  void setFrom(String? id) => state = (fromId: id, toId: state.toId);
  void setTo(String? id) => state = (fromId: state.fromId, toId: id);
}

final journeyQueryProvider =
    NotifierProvider<JourneyQueryNotifier, JourneyQuery>(
  JourneyQueryNotifier.new,
);

/// Routes that go from the chosen start to the chosen destination,
/// narrowed by the type filter (All / Minibus / Anbessa).
final journeyResultsProvider = FutureProvider<List<BusRoute>>((ref) async {
  final query = ref.watch(journeyQueryProvider);
  final filter = ref.watch(typeFilterProvider);
  if (query.fromId == null || query.toId == null) return [];

  final routes = await ref.watch(routeRepositoryProvider).findRoutes(
        boardStopId: query.fromId!,
        alightStopId: query.toId!,
      );
  if (filter == null) return routes;
  return routes.where((r) => r.type == filter).toList();
});

/// The fare of one route for the current journey (null if unknown).
final routeFareProvider = FutureProvider.family<Fare?, String>((ref, routeId) {
  final query = ref.watch(journeyQueryProvider);
  if (query.fromId == null || query.toId == null) return null;
  return ref.watch(routeRepositoryProvider).fareFor(
        routeId: routeId,
        fromStopId: query.fromId!,
        toStopId: query.toId!,
      );
});