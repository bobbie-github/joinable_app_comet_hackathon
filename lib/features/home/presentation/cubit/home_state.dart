part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}


class LoadingGetInfoHomePage extends HomeState{}
class SuccessInfoHomePage extends HomeState{
  InfoModel infoModel;
  List<FriendModel> friendModel;
  SuccessInfoHomePage({required this.infoModel,required this.friendModel});
}

class ErrorState extends HomeState{
  String message;
  ErrorState({required this.message});
}


