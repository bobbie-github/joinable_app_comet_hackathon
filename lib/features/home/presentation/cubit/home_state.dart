part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}


class LoadingGetInfoHomePage extends HomeState{}
class SuccessInfoHomePage extends HomeState{
  InfoModel infoModel;
  SuccessInfoHomePage({required this.infoModel});
}
class SuccessFriend extends HomeState{
  List<FriendModel> friendModel;
  SuccessFriend({required this.friendModel});
}

class ErrorState extends HomeState{
  String message;
  ErrorState({required this.message});
}


