import 'dart:convert';
import 'package:exam_22_06_2023/screens/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper{
  Future<Quiz> apiCalling() async {
    Uri uri = Uri.parse("https://opentdb.com/api.php?amount=10&category=27&difficulty=easy&type=multiple");
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    Quiz quiz = Quiz.fromJson(json);
    return quiz;
  }
}