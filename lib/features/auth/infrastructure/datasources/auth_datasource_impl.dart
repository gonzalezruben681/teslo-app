import 'package:teslo_shop/features/auth/domain/datasources/auth_datasorce.dart';
import 'package:teslo_shop/features/auth/domain/entities/user.dart';

class AuthDataSourceImpl extends AuthDataSource {
  @override
  Future<User> checkAuthStatus(String token) {
    // TODO: implement checkAuthStatus
    throw UnimplementedError();
  }

  @override
  Future<User> login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<User> register(String email, String password, String fullName) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
