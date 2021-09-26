// @dart=2.9
import 'package:chatapp/models/user.dart';
import 'package:chatapp/service_locator.dart';
import 'package:chatapp/services/storage_service/storage_repository.dart';
import 'package:flutter/foundation.dart';

abstract class AuthenticationRepository {
  // final StorageRepository storageRepository = serviceLocator<StorageRepository>();
  Future<String> signIn({@required String email, @required String password});
  Future<User> signUp({
    @required String username,
    @required String email,
    @required String password,
  });
  Future<void> logout();
  Future<String> isSignIn();
  Future<String> getUserID();
}
