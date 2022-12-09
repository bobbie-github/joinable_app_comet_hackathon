
import 'dart:async';

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
            'Accept': 'application/json'
            // 'Authorization':'Bearer $accessToken'
          }),
          HttpLoggingInterceptor()
        ]
    );
    return _$ApiService(client);
  }

  // @Get(path: ApiPath.user)
  // Future<Response> getUser();

  @Get(path: ApiPath.todo)
  Future<Response> getTodo();

}

