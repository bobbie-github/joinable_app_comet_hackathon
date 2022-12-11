import 'dart:convert';

import 'package:app_comet_hackathon/core/constants/shared_preferences.dart';
import 'package:app_comet_hackathon/features/home/data/models/info_model.dart';
import 'package:bloc/bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/constants/api_path.dart';
import '../../../../core/services/api_custom.dart';
import '../../../models/your_friend_model.dart';

part 'home_state.dart';
@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  Future<void> getInfoHomePage() async {
    try {
      emit(LoadingGetInfoHomePage());
      InfoModel infoModel;
      print("post");

      final post  = await ApiCustom.getPrivateCall(ApiPath.me);
      print("post");
      final decode = json.decode(post.body);
      print(post.body);
      if(post.statusCode==422){
        emit(ErrorState(message:decode['message']));
      }else if(post.statusCode==200){
        infoModel = InfoModel.fromJson(decode['data']);
        print(infoModel.company);
        emit(SuccessInfoHomePage(infoModel: infoModel));
      }else{
        emit(ErrorState(message:decode['message']));
      }
    } catch (e) {
      print('@@@ $e');
      emit(ErrorState(message:e.toString()));
    }
  }

  Future<void> getFriend() async {
    try {
      emit(LoadingGetInfoHomePage());
      List<FriendModel> infoModel=[];
      final post  = await ApiCustom.getPrivateCall(ApiPath.persion+'?scope_recommend=all');
      final decode = json.decode(post.body);
      final list =decode['data'] as List;
      if(post.statusCode==422){
        emit(ErrorState(message:decode['message']));
      }else if(post.statusCode==200){
       for (var element in list) {
         infoModel.add(FriendModel.fromJson(element));
       }
        emit(SuccessFriend(friendModel: infoModel));
      }else{
        emit(ErrorState(message:decode['message']));
      }
    } catch (e) {
      print('@@@ $e');
      emit(ErrorState(message:e.toString()));
    }
  }
}
