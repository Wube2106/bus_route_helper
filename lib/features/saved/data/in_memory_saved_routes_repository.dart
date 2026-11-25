import '../domain/saved_route.dart';
import '../domain/saved_routes_repository.dart';

class InMemorySavedRoutesRepository implements SavedRoutesRepository {
  final List<SavedRoute> _items = [];

  bool _same(SavedRoute a, SavedRoute b) =>
      a.routeId == b.routeId &&
      a.boardStopId == b.boardStopId &&
      a.alightStopId == b.alightStopId;

  @override
  Future<List<SavedRoute>> all() async => List.unmodifiable(_items);

  @override
  Future<void> add(SavedRoute route) async {
    if (!_items.any((item) => _same(item, route))) _items.add(route);
  }

  @override
  Future<void> remove(SavedRoute route) async {
    _items.removeWhere((item) => _same(item, route));
  }
}