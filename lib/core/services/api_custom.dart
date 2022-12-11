

import 'package:chopper/chopper.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import '../constants/api_path.dart';
import '../constants/shared_preferences.dart';
final _storage = GetStorage();
class ApiCustom{

  static Future<http.Response>openCall(url,body)async{
    final post = await http.post(Uri.parse(ApiPath.baseUrl+url),body: body,headers: {'Accept': 'application/json',});
    return post;
  }
  static Future<http.Response>getPrivateCall(url)async{
    final post = await http.get(Uri.parse(ApiPath.baseUrl+url),headers: {'Accept': 'application/json', "Authorization": 'Bearer ${_storage.read(token)}'})
        .catchError((onError){
          print("@@ $onError");
    });
    return post;
  }
}