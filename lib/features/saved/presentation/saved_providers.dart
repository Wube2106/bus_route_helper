import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/in_memory_saved_routes_repository.dart';
import '../domain/saved_route.dart';
import '../domain/saved_routes_repository.dart';

final savedRoutesRepositoryProvider = Provider<SavedRoutesRepository>(
  (ref) => InMemorySavedRoutesRepository(),
);

class SavedRoutesNotifier extends AsyncNotifier<List<SavedRoute>> {
  @override
  Future<List<SavedRoute>> build() =>
      ref.read(savedRoutesRepositoryProvider).all();

  Future<void> add(SavedRoute route) async {
    final repository = ref.read(savedRoutesRepositoryProvider);
    await repository.add(route);
    state = AsyncData(await repository.all());
  }

  Future<void> remove(SavedRoute route) async {
    final repository = ref.read(savedRoutesRepositoryProvider);
    await repository.remove(route);
    state = AsyncData(await repository.all());
  }
}

final savedRoutesProvider =
    AsyncNotifierProvider<SavedRoutesNotifier, List<SavedRoute>>(
  SavedRoutesNotifier.new,
);