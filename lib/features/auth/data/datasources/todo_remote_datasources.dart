

import 'dart:convert';
import 'dart:math';

import 'package:app_comet_hackathon/core/services/api_service.dart';
import 'package:app_comet_hackathon/features/auth/data/models/get_code_company_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exception.dart';

abstract class AuthRemoteDataSources{
  Future<GetCodeCompanyModel>getCode(code);
}


@LazySingleton(as: AuthRemoteDataSources)
class AuthRemoteDataSourcesImpl extends AuthRemoteDataSources{
  final ApiService apiService;

  AuthRemoteDataSourcesImpl(this.apiService);

  @override
  Future<GetCodeCompanyModel>getCode(code) async{
      try {
        GetCodeCompanyModel model;
        final response  = await apiService.getTodo();
        // final jsonDecode = jsonEncode(response);
        print("@@@@ ${jsonDecode}");
        return GetCodeCompanyModel.fromJson({}) ;
      }  catch (e) {
        print('@@@ $e');
       throw ServerException(e.toString());
      }
  }

}