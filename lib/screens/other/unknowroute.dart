import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:flutter_app_getx/screens/home/home.dart';
import 'package:get/get.dart';

class unknowroute extends StatelessWidget {

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("Unknow route"),
        ),
        body:
          Center(
            child:
            Text("Unknow route"),
          ));
  }
}