import '../domain/app_user.dart';
import '../domain/auth_repository.dart';

class InMemoryAuthRepository implements AuthRepository {
  AppUser _check(String email, String password) {
    if (!email.contains('@')) {
      throw const AuthException('Enter a valid email address.');
    }
    if (password.length < 6) {
      throw const AuthException('Password must have at least 6 characters.');
    }
    return AppUser(email: email.trim());
  }

  @override
  Future<AppUser> signIn(String email, String password) async =>
      _check(email, password);

  @override
  Future<AppUser> register(String email, String password) async =>
      _check(email, password);

  @override
  Future<void> signOut() async {}
}