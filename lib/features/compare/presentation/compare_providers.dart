import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/domain/models.dart';
import '../../routes/presentation/providers.dart';

/// Ids of the routes the user has picked to compare (at most two).
class CompareSelectionNotifier extends Notifier<List<String>> {
  @override
  List<String> build() => [];

  /// Picks a route, or removes it if it was already picked.
  /// A third pick is ignored until one of the two is removed.
  void toggle(String routeId) {
    if (state.contains(routeId)) {
      state = [
        for (final id in state)
          if (id != routeId) id,
      ];
    } else if (state.length < 2) {
      state = [...state, routeId];
    }
  }

  void clear() => state = [];
}

final compareSelectionProvider =
    NotifierProvider<CompareSelectionNotifier, List<String>>(
  CompareSelectionNotifier.new,
);

/// The full route objects for the picked ids, in the order they were picked.
final comparedRoutesProvider = FutureProvider<List<BusRoute>>((ref) async {
  final ids = ref.watch(compareSelectionProvider);
  final repository = ref.watch(routeRepositoryProvider);
  final routes = <BusRoute>[];
  for (final id in ids) {
    final route = await repository.routeById(id);
    if (route != null) routes.add(route);
  }
  return routes;
});