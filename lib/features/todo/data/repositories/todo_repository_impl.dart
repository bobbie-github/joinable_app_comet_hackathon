




import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/Todo.dart';
import '../../domain/repositories/TodoRepository.dart';
import '../datasources/todo_remote_datasources.dart';
import '../models/todo_model.dart';

@LazySingleton(as: TodoRepository)
class TotoRepositoryImpl implements TodoRepository{
  final TodoRemoteDataSources todoRemoteDataSources;
  TotoRepositoryImpl(this.todoRemoteDataSources);
  @override
  Future<Either<Failure, List<TodoModel>>> getTodos() async {
   try{
     final data = await todoRemoteDataSources.getTodo();
     return Right(data);
   } on ServerException catch (e){
     return Left(ServerFailure(e.toString()));
   }
  }


}