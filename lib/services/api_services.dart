import 'dart:developer';

import 'package:api_practice1/models/userModel.dart';
import 'package:api_practice1/services/constants.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<userModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<userModel> _model = userModelFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
