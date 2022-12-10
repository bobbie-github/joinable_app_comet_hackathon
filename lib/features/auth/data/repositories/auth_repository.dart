

import 'package:app_comet_hackathon/core/error/failures.dart';
import 'package:app_comet_hackathon/core/util/util_format.dart';
import 'package:app_comet_hackathon/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/constants/shared_preferences.dart';
import '../../../../core/error/exception.dart';
import '../datasources/todo_remote_datasources.dart';
import '../models/get_code_company_model.dart';

final _storage= GetStorage();

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository{
  final AuthRemoteDataSources todoRemoteDataSources;
  AuthRepositoryImpl(this.todoRemoteDataSources);
  @override
  Future<Either<Failure, GetCodeCompanyModel>> getCode(code) async {
    try{
      final data = await todoRemoteDataSources.getCode(code);
      //save data to storage
      _storage.write(companyID,data.id);
      _storage.write(joinAbleCode,data.joinableCode);

      return Right(data);
    } on ServerResponseException catch (e){
      print("ServerResponseException @ ${e}");
      return Left(ServerFailure(e.toString()));
    } on ServerException catch (e){
      print("err@ ${e.message}");
      return Left(ServerFailure(e.toString()));
    }
  }


}
