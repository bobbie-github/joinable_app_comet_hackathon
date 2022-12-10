part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class ErrorState extends AuthState{
  String message;
  ErrorState({required this.message});
}

class LoadingState extends AuthState{
  @override
  String toString() =>"LoadingState";
}

class SuccessLoadCodeCompany extends AuthState{
  GetCodeCompanyModel getCodeCompanyModel;
  SuccessLoadCodeCompany({required this.getCodeCompanyModel});
  @override
  String toString() =>"SuccessLoadCodeCompany";
}

class SuccessCreatePassword extends AuthState{}
class SuccessLogin extends AuthState{}
