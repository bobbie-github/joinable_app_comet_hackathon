

import 'package:app_comet_hackathon/core/error/failures.dart';
import 'package:app_comet_hackathon/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../datasources/todo_remote_datasources.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository{
  final AuthRemoteDataSources todoRemoteDataSources;
  AuthRepositoryImpl(this.todoRemoteDataSources);


  @override
  Future<Either<Failure, dynamic>> getCode(code) async {
    try{
      print('query@@@@ $code');
      final data = await todoRemoteDataSources.getCode(code);
      return Right('response');
    } on ServerException catch (e){
      return Left(ServerFailure(e.toString()));
    }
  }


}
