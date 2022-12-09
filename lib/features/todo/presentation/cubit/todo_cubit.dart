
import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecase/todo_usecase.dart';
part 'todo_state.dart';


@injectable
class TodoCubit extends Cubit<TodoState> {
  final GetTodosUseCase getTodosUseCase;
  TodoCubit(this.getTodosUseCase) : super(TodoInitial());

  Future<void> getTodo()async{
    emit(LoadingState());
    print("call api");
     final request =await getTodosUseCase(NoParams());
     print(request);
  }
}
