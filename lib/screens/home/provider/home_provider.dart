import 'dart:ffi';
import 'dart:math';

import 'package:exam_22_06_2023/screens/home/model/home_model.dart';
import 'package:exam_22_06_2023/utils/api/api_helper.dart';
import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
  ApiHelper apiHelper = ApiHelper();
  Quiz? quiz;

  List answer = [];

  // int? index1;
  // int? index2;
  // int? index3;

  Future<void> apiCalling() async {
    quiz = await apiHelper.apiCalling();
    notifyListeners();
  }

  // void randnom() {
  //
  //   var rnd = Random();
  //   index1 =  rnd.nextInt(3);
  //   if(index2 == index1 && index2 == index3){
  //     index2 =  rnd.nextInt(3);
  //   }
  //   if(index3 == index1 && index3 == index3){
  //     index3 =  rnd.nextInt(3);
  //   }

    // print("===================================i");
    // notifyListeners();
  // }
}