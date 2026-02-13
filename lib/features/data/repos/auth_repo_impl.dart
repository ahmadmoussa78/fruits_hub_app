import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/expections.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/data/models/user_model.dart';
import 'package:fruits_hub/features/domain/entites/user_entity.dart';
import 'package:fruits_hub/features/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomExpection catch (e) {
      return left(ServerFaliure(e.message));
    } catch (e) {
      log(
        'Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}',
      );
      return left(ServerFaliure('An error occurred, please try again.'));
    }
  }
}
