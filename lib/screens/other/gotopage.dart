import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:flutter_app_getx/screens/home/home.dart';
import 'package:get/get.dart';

class gotopage extends StatelessWidget {

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("go to page"),
        ),
        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text("${Get.parameters}")
                // Text("${Get.arguments}")
                Text("go to page")
                ,
                ElevatedButton( onPressed:()
              async{
              var result=await Get.to(
                  ()=>Home(),
                  fullscreenDialog: true,
                  transition: Transition.leftToRight,
                  duration: Duration(microseconds: 900),
                  curve: Curves.linear,
                  arguments: "data frome main page"
              );
              print(result);
          },
                    child: Text("go to page"))
              ],
            ),
          ));
  }
}