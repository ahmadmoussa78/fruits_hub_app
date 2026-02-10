import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/domain/entites/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.email, required super.name, required super.uID});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      email: user.email ?? '',
      name: user.displayName ?? '',
      uID: user.uid,
    );
  }
}
