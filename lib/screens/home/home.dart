import 'package:flutter/material.dart';
import '../../controllers/counter_controller.dart';
import 'package:get/get.dart';

import '../other/other.dart';
class Home extends StatelessWidget {
  @override
  Widget build(context) {

    // Instantiate your class using Get.put() to make it available for all "child" routes there.

    return Scaffold(

      // Use Obx(()=> to update Text() whenever count is changed.

        appBar: AppBar(

          title:  Text("GetX Samples"),),



        // Replace the 8 lines Navigator.push by a simple Get.to(). You don't need context
        body:
        Align(
          alignment: Alignment.topCenter,
        child:
        Column(
          children:
          [

          ElevatedButton(
              onPressed:() => Get.toNamed("/increment"),
            child: Text("Increment")),
            ElevatedButton(
              // onPressed:() => Get.toNamed("/gotopage",parameters: {"key":"value"}),
              // onPressed:() => Get.toNamed("/gotopage",arguments: "hi my friend"),
                onPressed:() => Get.toNamed("/increment_controller"),
                child: Text("Increment_Controller_UniqId")),

            ElevatedButton(
              // onPressed:() => Get.toNamed("/gotopage",parameters: {"key":"value"}),
              // onPressed:() => Get.toNamed("/gotopage",arguments: "hi my friend"),
                onPressed:() => Get.toNamed("/incrementuniqid"),
                child: Text("Increment_UniqId")),
            ElevatedButton(
                onPressed:() => Get.toNamed("/translate"),
                child: Text("Internationalization")),
            ElevatedButton(
                onPressed:() => Get.toNamed("/changethem"),
                child: Text("Change Theme")),
            SizedBox(height: 10,),


            ElevatedButton(
                onPressed:() => Get.toNamed("/Snackbar"),
                child: Text("Snackbar")),

            ElevatedButton(
                onPressed:() => Get.toNamed("/dialog"),
                child: Text("Dialog")),

            ElevatedButton(
                onPressed:() => Get.toNamed("/bottomsheet"),
                child: Text("BottomSheet")),

            ElevatedButton(
                // onPressed:() => Get.toNamed("/gotopage",parameters: {"key":"value"}),
             // onPressed:() => Get.toNamed("/gotopage",arguments: "hi my friend"),
                onPressed:() => Get.toNamed("/gotopage"),
            child: Text("Go To Page")),


            ElevatedButton(
              // onPressed:() => Get.toNamed("/gotopage",parameters: {"key":"value"}),
              // onPressed:() => Get.toNamed("/gotopage",arguments: "hi my friend"),
                onPressed:() => Get.toNamed("/dependency_injection"),
                child: Text("Dependency Injection")),
            ElevatedButton(
              // onPressed:() => Get.toNamed("/gotopage",parameters: {"key":"value"}),
              // onPressed:() => Get.toNamed("/gotopage",arguments: "hi my friend"),
                onPressed:() => Get.toNamed("/show_product"),
                child: Text("Connect To Api")),
        ],

        ),
        ),
    );

  }
}


