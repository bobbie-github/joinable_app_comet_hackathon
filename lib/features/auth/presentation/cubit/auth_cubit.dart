import 'dart:convert';

import 'package:app_comet_hackathon/core/constants/api_path.dart';
import 'package:app_comet_hackathon/core/constants/shared_preferences.dart';
import 'package:app_comet_hackathon/core/services/api_custom.dart';
import 'package:app_comet_hackathon/core/services/api_service.dart';
import 'package:app_comet_hackathon/features/auth/data/models/get_code_company_model.dart';
import 'package:app_comet_hackathon/features/auth/domain/usecase/auth_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
part 'auth_state.dart';


final _storage= GetStorage();


@injectable
class AuthCubit extends Cubit<AuthState> {
  final GetCodeCompanyUseCase getCodeCompanyUseCase;
  final ApiService apiService;

  AuthCubit(this.getCodeCompanyUseCase, this.apiService) : super(AuthInitial());

  Future<void> getCode(String code) async {
    emit(LoadingState());
    final request = await getCodeCompanyUseCase(code);
    print("request@@@ ${request}");
    request.fold((error) => emit(ErrorState(message: 'ErrorState')), (data) =>emit(SuccessLoadCodeCompany(getCodeCompanyModel: data)));
  }

  Future<void> postRegister(String email, String password,
      String confirmPassword) async {
    try {
      emit(LoadingState());
      print(_storage.read(companyID));
      final body = {
        "company_id": _storage.read(companyID).toString(),
        "joinable_code": _storage.read(joinAbleCode),
        "email": email,
        "password": password,
        "password_confirmation": confirmPassword,
      };
      print(body);
      final post  = await ApiCustom.openCall(ApiPath.register, body);
      print("post");
      final decode = json.decode(post.body);
      print(post.body);
      if(post.statusCode==422){
        emit(ErrorState(message:decode['message']));
      }else if(post.statusCode==200){
        emit(SuccessCreatePassword());
      }else{
        emit(ErrorState(message:decode['message']));
      }
    } catch (e) {
      emit(ErrorState(message:e.toString()));
    }
  }

  Future<void> postLogin(String email, String password) async {
    try {
      emit(LoadingState());
      final body = {
        "credential": email,
        "password": password,
      };
      print(body);
      final post  = await ApiCustom.openCall(ApiPath.login, body);
      print("post");
      final decode = json.decode(post.body);
      print(post.body);
      if(post.statusCode==422){
        emit(ErrorState(message:decode['message']));
      }else if(post.statusCode==200){
        //set token
        _storage.write(token, decode['data']['access_token']);
        emit(SuccessLogin());
      }else{
        emit(ErrorState(message:decode['message']));
      }
    } catch (e) {
      emit(ErrorState(message:e.toString()));
    }
  }
}
