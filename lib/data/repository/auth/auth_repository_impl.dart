import 'package:dartz/dartz.dart';
import 'package:ios/data/models/auth/create_user_req.dart';
import 'package:ios/data/sources/auth/auth_firebase_service.dart';
import 'package:ios/domain/repository/auth/auth.dart';
import 'package:ios/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository{
  
  
  
  
  @override
  Future<void> signin() {
    // TODO: implement signin
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
   return await sl<AuthFirebaseService>().signup(createUserReq);
  }

}