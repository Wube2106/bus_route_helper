import 'saved_route.dart';

abstract interface class SavedRoutesRepository {
  Future<List<SavedRoute>> all();
  Future<void> add(SavedRoute route);
  Future<void> remove(SavedRoute route);
}