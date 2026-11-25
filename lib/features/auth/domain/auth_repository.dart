import 'app_user.dart';

class AuthException implements Exception {
  const AuthException(this.message);
  final String message;
}

abstract interface class AuthRepository {
  Future<AppUser> signIn(String email, String password);
  Future<AppUser> register(String email, String password);
  Future<void> signOut();
}