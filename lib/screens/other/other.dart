import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final counter_controller c = Get.find();

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("${c.count}")));
  }
}