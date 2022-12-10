

import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;

import '../constants/api_path.dart';

class ApiCustom{

  static Future<http.Response>openCall(url,body)async{
    final post = await http.post(Uri.parse(ApiPath.baseUrl+url),body: body,headers: {'Accept': 'application/json',});
    return post;
  }
}