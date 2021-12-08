import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class changethem extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar: AppBar(
        title: Text("change them"),
      ),
        body:
    Center(child:
    ElevatedButton(onPressed:(){
      Get.changeTheme(Get.isDarkMode? ThemeData.light(): ThemeData.dark());
    }

        ,
        child: Text("change them"))
    ));
  }
}