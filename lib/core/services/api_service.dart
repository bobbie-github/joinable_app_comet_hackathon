
import 'dart:async';

import 'package:app_comet_hackathon/features/auth/data/models/get_code_company_model.dart';
import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import '../constants/api_path.dart';
part 'api_service.chopper.dart';

@lazySingleton
@ChopperApi()
abstract class ApiService extends ChopperService {
  @factoryMethod
  static ApiService create() {
    final client = ChopperClient(
      baseUrl: ApiPath.baseUrl,
      services: [_$ApiService()],
        // client: http.IOClient(
        //   HttpClient()..connectionTimeout = const Duration(seconds: 60),
        // ),
        errorConverter: JsonConverter(),
      converter: JsonConverter(),
        interceptors: [
          const HeadersInterceptor({
            'Accept': 'application/json',
            "Content-Type":'application/json',
            // 'Authorization':'Bearer $accessToken'
          }),
          HttpLoggingInterceptor()
        ]
    );
    return _$ApiService(client);
  }

  // @Get(path: ApiPath.user)
  // Future<Response> getUser();

  @Get(path: ApiPath.getCodeCompany)
  Future<Response> getTodo();

  @Get(path: ApiPath.getCodeCompany +'/{code}')
  Future<Response> getCode(@Path('code') final String code);

  @Post(path: ApiPath.register)
  Future<Response> postRegister(@Body() Map<String, dynamic> data);

}

