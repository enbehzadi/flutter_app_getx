import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:flutter_app_getx/controllers/dependency_injection_controller.dart';
import 'package:get/get.dart';

class learn_dependency_injection extends StatelessWidget {

  @override
  Widget build(context){
/*    dependency_injection_controller mycontroller=Get.put(dependency_injection_controller(),permanent:true,tag: "first");
    Get.put(dependency_injection_controller(),permanent: true,tag: "second");*/
    //make when need this object
    //Get.lazyPut<dependency_injection_controller>(()=>dependency_injection_controller(),tag: "second");

//make befor 5 seconds
  /*  Get.putAsync(()async{
      await Future.delayed(Duration(seconds: 5));
      return dependency_injection_controller;
    },tag: "tHree");
    */
    return Scaffold(
      appBar:
        AppBar(
          title: Text("dependency injection"),
        ),
        body:Center(
          child:Obx((){
    return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            new Text("${Get.find<dependency_injection_controller>(tag: "first").count}",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            new MaterialButton(onPressed: (){
            Get.find<dependency_injection_controller>(tag: "first").increment();
            },
            child: Text('increment',style: TextStyle(fontSize: 15,color: Colors.white),),color: Colors.redAccent,
            ),

            new Text("${Get.find<dependency_injection_controller>(tag: "second").count}",
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            new MaterialButton(onPressed: (){
            Get.find<dependency_injection_controller>(tag: "second").increment();
            },
            child: Text('increment',style: TextStyle(fontSize: 15,color: Colors.white),),color: Colors.redAccent,
            ),
            ],
            );

    }),
    )
    );
  }
}