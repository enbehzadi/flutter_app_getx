import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:flutter_app_getx/controllers/message_controller.dart';
import 'package:get/get.dart';

class translate extends StatelessWidget {
  message_controller mymessage_controller=Get.put(message_controller());
  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("Internationalization".tr),
        ),
        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hello".tr,style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color:Colors.black),)
                ,
                SizedBox(
                    width: 100,
                child:
                ElevatedButton(
                  style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.all(Colors.red),
                  ),
                  onPressed:(){

                    mymessage_controller.changeMessages("fa","IR");
                  },
                  child: Text("Fa")
                ),
                ),
              SizedBox(
                width: 100,
                child:
                ElevatedButton(
                    style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed:(){
                      mymessage_controller.changeMessages("en","US");
                    },
                    child: Text("En")
                ),
              ),
                SizedBox(
                  width: 100,
                  child:
                ElevatedButton(
                    style: ButtonStyle(backgroundColor:
                    MaterialStateProperty.all(Colors.green),
                    ),
                    onPressed:(){
                      mymessage_controller.changeMessages("de","DE");
                    },
                    child: Text("De")
                ),
                )
              ],
            ),
          ));
  }
}