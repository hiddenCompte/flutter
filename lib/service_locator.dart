

import 'package:get_it/get_it.dart';
import 'package:ios/data/repository/auth/auth_repository_impl.dart';
import 'package:ios/data/sources/auth/auth_firebase_service.dart';
import 'package:ios/domain/repository/auth/auth.dart';
import 'package:ios/domain/usecases/auth/signup.dart';

final sl = GetIt.instance;

Future<void> initializeDependecies() async{

  sl.registerSingleton<AuthFirebaseService>(
    AuthFirebaseServiceImpl()
  );

   sl.registerSingleton<AuthRepository>(
    AuthRepositoryImpl()
  );

    sl.registerSingleton<SignupUseCase>(
    SignupUseCase()
  );



     
}
