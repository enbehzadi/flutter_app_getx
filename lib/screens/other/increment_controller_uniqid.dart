import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class increment_controller extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  counter_controller myConterCountroller=Get.put(counter_controller());
  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("increment_controller"),
        ),
        body:
          Center(
            child:Obx((){
                return Text(myConterCountroller.count.string,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),);
          }),
            /*   GetX(builder: (counter_controller fetchApi.controller) {
                return Text(fetchApi.controller.count.string,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),);
              },
              */
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myConterCountroller.increment();
        },
        child:Icon(Icons.add),
      ),
    );
  }
}