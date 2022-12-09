



import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/todo_model.dart';
import '../entities/Todo.dart';
import '../repositories/TodoRepository.dart';

@lazySingleton
class GetTodosUseCase implements UseCase<List<TodoModel>, NoParams> {
  final TodoRepository todosRepository;
  GetTodosUseCase(this.todosRepository);

  @override
  Future<Either<Failure, List<TodoModel>>> call(NoParams noParams) async {
    return await todosRepository.getTodos();
  }
}
