import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/expections.dart';

class FirebaseAuthService {
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExpection(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExpection(
          message: 'The account already exists for that email.',
        );
      } else {
        throw CustomExpection(message: 'An error occurred, please try again.');
      }
    } catch (e) {
      throw CustomExpection(message: 'An error occurred, please try again.');
    }
  }
}
