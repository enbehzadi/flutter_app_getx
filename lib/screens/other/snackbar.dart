import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class snackbar extends StatelessWidget {

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("snackbar"),
        ),
        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(onPressed:() =>
            Get.snackbar(
            "title", // title
            "message", // message
              backgroundColor: Colors.green,// background
            icon: Icon(Icons.alarm),// icon
            shouldIconPulse: true,//icon cheshmakzan
            barBlur: 20,
            isDismissible: true,
            borderColor: Colors.blue,//border color
            borderWidth: 10,
            duration: Duration(seconds: 5),
            snackPosition: SnackPosition.BOTTOM,
            mainButton: TextButton(onPressed: (){},
                child: Text("my button",style:
            TextStyle(color: Colors.black),)),
            overlayColor: Colors.grey.withOpacity(0.5),
            overlayBlur: 1,
            dismissDirection: SnackDismissDirection.HORIZONTAL,
             // userInputForm: Form(child: TextField()),
            )
             ,child: Text("show snackbar"))
              ],
            ),
          )
    );
  }
}