import 'package:bus_route_helper/features/auth/data/in_memory_auth_repository.dart';
import 'package:bus_route_helper/features/auth/domain/auth_repository.dart';
import 'package:bus_route_helper/features/saved/data/in_memory_saved_routes_repository.dart';
import 'package:bus_route_helper/features/saved/domain/saved_route.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  SavedRoute sample() => SavedRoute(
        routeId: 'r1',
        boardStopId: 'mexico',
        alightStopId: 'megenagna',
        createdAt: DateTime(2026, 11, 26),
      );

  test('sign in rejects an invalid email', () {
    expect(
      InMemoryAuthRepository().signIn('a', '123456'),
      throwsA(isA<AuthException>()),
    );
  });

  test('sign in rejects a short password', () {
    expect(
      InMemoryAuthRepository().signIn('a@b.com', '123'),
      throwsA(isA<AuthException>()),
    );
  });

  test('saving the same route twice keeps one entry', () async {
    final repository = InMemorySavedRoutesRepository();
    await repository.add(sample());
    await repository.add(sample());
    expect((await repository.all()).length, 1);
  });

  test('removing a saved route deletes it', () async {
    final repository = InMemorySavedRoutesRepository();
    await repository.add(sample());
    await repository.remove(sample());
    expect(await repository.all(), isEmpty);
  });
}
