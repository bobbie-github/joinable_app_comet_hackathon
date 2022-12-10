
import 'dart:convert';

import 'package:app_comet_hackathon/core/constants/api_path.dart';
import 'package:app_comet_hackathon/core/services/api_service.dart';
import 'package:app_comet_hackathon/features/auth/data/models/get_code_company_model.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/error/exception.dart';
import 'package:http/http.dart' as http;

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
          final response  = await apiService.getCode(code);
          print(response.error);
          final errorResponse = response.error;
          if(response.statusCode==404){
            throw ServerResponseException(errorResponse.toString());
          }
          GetCodeCompanyModel model = GetCodeCompanyModel.fromJson(response.body['data']);
          return model;
      }   catch (e) {
       throw ServerException(e.toString());
      }
  }

}