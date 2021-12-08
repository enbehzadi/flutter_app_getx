import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class increment extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  var count=0.obs;
  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("increment"),
        ),
        body:
          Center(
            child:Obx((){
              return Text('$count',style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold));
          }),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
        },
        child:Icon(Icons.add),
      ),
    );
  }
}