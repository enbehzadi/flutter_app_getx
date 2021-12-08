import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller_uniqid.dart';
import 'package:get/get.dart';

class increment_uniq_id extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  counter_controller_uniqid myConterCountroller=Get.put(counter_controller_uniqid());
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
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        GetBuilder(
          id: "FirstTextCount",
          builder:
            (counter_controller_uniqid controller) {
                return Text("FirstTextCount:"+controller.count.string,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),);
              },
        ),
          GetBuilder(
            id: "SecondTextCount",
            builder:
                (counter_controller_uniqid controller) {
              return Text("SecondTextCount:"+controller.count.string,style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold),);
            },
          ),
        ]
      )
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