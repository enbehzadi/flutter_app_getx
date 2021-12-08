import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';
class dialog extends StatelessWidget {

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("dialog"),
        ),
        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:() =>Get.defaultDialog(
                        title:"title" ,
                        middleText: "Dialog made in 3 lines of code",
                        // set actions for click button
                        onConfirm: () => print("Ok"),
                        onCancel: ()=>  print("cancel"),
                        // set custome text for buttons
                        textConfirm: "ok",
                        textCancel: "cancel",
                        backgroundColor: Colors.yellow,
                        titleStyle: TextStyle(color: Colors.red),
                        middleTextStyle: TextStyle(color: Colors.green),
                        radius: 5,
                        //dont close dialog by click on page
                        barrierDismissible: false,
                        //dont close dialog by back button
                        onWillPop:() async{
                            return false;
                        },
                        //overwrite middele text
                         // content: Text("my middle"),
                        //overwrite cancel,confirm
                        /* cancel: Text("cancel"),
                          confirm: Text("confirm")*/
                    )
                    ,child: Text("show dialog"))
              ],
            ),
          ));
  }
}