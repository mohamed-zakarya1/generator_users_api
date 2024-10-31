import 'package:dio/dio.dart';
import 'package:generator_users_api/Models/generate_user_model.dart';

class GenerateUsersServices {
  static Dio dio = Dio();
  static Future<GenerateUsersModels> generateUsers() async{
    try {
      const url = "https://randomuser.me/api/?results=10";
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        return GenerateUsersModels.fromJson(response.data);
      } else {
        throw Exception("404");
      }
    } catch (e) {
      throw Exception("$e");
    }
  }
}