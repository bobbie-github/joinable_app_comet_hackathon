

import 'dart:convert';
import 'dart:math';

import 'package:app_comet_hackathon/core/services/api_service.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../models/todo_model.dart';

abstract class TodoRemoteDataSources{
  Future<List<TodoModel>>getTodo();
}


@LazySingleton(as: TodoRemoteDataSources)
class TodoRemoteDataSourcesImpl extends TodoRemoteDataSources{
  final ApiService apiService;

  TodoRemoteDataSourcesImpl(this.apiService);

  @override
  Future<List<TodoModel>> getTodo()async {
    try {

      final response  = await apiService.getTodo();
      // final jsonDecode = jsonEncode(response);
      print("@@@@ ${jsonDecode}");
      return [];
    }  catch (e) {
      print('@@@ $e');
     throw ServerException(e.toString());
    }
  }

}