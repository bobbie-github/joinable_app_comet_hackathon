import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

@injectable
class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootInitial());

  Future<void> onChangeTap(int index)async {
      emit(IndexTapState(indexTap: index));
  }
}

class BottomNavCubit extends Cubit<int> {
  BottomNavCubit() : super(0);

  /// update index function to update the index onTap in BottomNavigationBar
  void updateIndex(int index)async{
    print(index);
  }

  // /// for navigation button on single page
  // void getHome() => emit(0);
  // void getTasks() => emit(1);
}