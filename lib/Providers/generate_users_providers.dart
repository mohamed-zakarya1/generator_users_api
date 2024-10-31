import 'package:flutter/material.dart';
import 'package:generator_users_api/Models/generate_user_model.dart';
import 'package:generator_users_api/Services/generate_user_services.dart';

class GenerateUsersProviders extends ChangeNotifier {
  GenerateUsersModels? model;
  fetchApi() async{
    model = await GenerateUsersServices.generateUsers();
    notifyListeners();
  }
}