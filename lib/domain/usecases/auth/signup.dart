import 'package:dartz/dartz.dart';
import 'package:ios/core/usecase/usecase.dart';
import 'package:ios/data/models/auth/create_user_req.dart';
import 'package:ios/domain/repository/auth/auth.dart';
import 'package:ios/service_locator.dart';

class SignupUseCase  implements UseCase<Either,CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq ? params}) {
     return sl<AuthRepository>().signup(params!);
  }
       

}