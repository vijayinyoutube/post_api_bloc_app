import 'dart:convert';

import 'package:http/http.dart' as http;

import '../API/api.dart';
import '../Models/homepage_model.dart';

abstract class HomePageRepository {
  Future<HomePageModel> fetchDetails();
}

class HomePageRepo extends HomePageRepository {
  @override
  Future<HomePageModel> fetchDetails() async {
    final response = await http.post(Uri.parse("$baseUrl/users"), body: {
      {"name": "morpheus", "job": "leader"}
    });

    if (response.statusCode == 201) {
      return HomePageModel.fromJson(response.body);
    } else {
      throw Exception('Failed to load API data');
    }
  }
}
