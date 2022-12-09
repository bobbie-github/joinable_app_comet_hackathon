import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'root_state.dart';

class RootCubit extends Cubit<RootState> {
  RootCubit() : super(RootInitial());

  Future<void> onChangeTap()async {
    int index =0;


  }
}


