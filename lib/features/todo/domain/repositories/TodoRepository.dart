
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/todo_model.dart';

abstract class TodoRepository{
  Future<Either<Failure, List<TodoModel>>> getTodos();
}