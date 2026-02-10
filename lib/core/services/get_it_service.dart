import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub/features/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(
    AuthRepoImpl(firebaseAuthService: getIt<FirebaseAuthService>()),
  );
}
