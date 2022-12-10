part of 'root_cubit.dart';

@immutable
abstract class RootState {}

class RootInitial extends RootState {}

class IndexTapState extends RootState{
  int indexTap =0;
  IndexTapState({ required this.indexTap});
}
