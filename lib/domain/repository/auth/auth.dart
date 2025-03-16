 import 'package:dartz/dartz.dart';
import 'package:ios/data/models/auth/create_user_req.dart';

abstract class AuthRepository {
      Future<Either> signup(CreateUserReq CreateUserReq);
      Future<void> signin();
 }