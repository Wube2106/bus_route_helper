import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/in_memory_auth_repository.dart';
import '../domain/app_user.dart';
import '../domain/auth_repository.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => InMemoryAuthRepository(),
);

class AuthNotifier extends Notifier<AppUser?> {
  @override
  AppUser? build() => null;

  Future<void> signIn(String email, String password) async {
    state = await ref.read(authRepositoryProvider).signIn(email, password);
  }

  Future<void> register(String email, String password) async {
    state = await ref.read(authRepositoryProvider).register(email, password);
  }

  Future<void> signOut() async {
    await ref.read(authRepositoryProvider).signOut();
    state = null;
  }
}

final authStateProvider = NotifierProvider<AuthNotifier, AppUser?>(
  AuthNotifier.new,
);