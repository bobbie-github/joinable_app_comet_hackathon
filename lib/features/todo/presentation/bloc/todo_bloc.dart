import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecase/todo_usecase.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
final GetTodosUseCase getTodosUseCase;
  TodoBloc(this.getTodosUseCase) : super(TodoInitial()) {
    on<GetTodoEvent>(_getTodo);
  }

  _getTodo(TodoEvent event,Emitter<TodoState> emit)async{
      emit(LoadingState());
      print("call api");
      final request = await getTodosUseCase(NoParams());
      print(request);

  }
}
