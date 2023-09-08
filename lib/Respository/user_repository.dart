import 'dart:convert';

import 'package:tech_staunch_practicle/api_service.dart';
import 'package:tech_staunch_practicle/Models/user.dart';

class UserRepository{

  final APIService apiService = APIService();
  Future<User> getUsersList({int page = 1}) async{

    final List<User> usersList = [];

    final data = await apiService.getUsers(page: page);

    if(data.error){
      throw Exception(data.errorMessage);
    }
    else{
      final response = data.data;
      final body = response!.body;
      final user = User.fromJson(jsonDecode(body));
      return user;
    }



  }

}