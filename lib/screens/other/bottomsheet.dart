import 'package:flutter/material.dart';
import 'package:flutter_app_getx/controllers/counter_controller.dart';
import 'package:get/get.dart';

class bottom_sheet extends StatelessWidget {

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(
      appBar:
        AppBar(
          title: Text("Bottomsheet"),
        ),
        body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed:() =>
                    Get.bottomSheet(
                        Container(
                            width:Get.width,
                          child: Wrap(
                                  children: [
                                    ListTile(
                                      title: Text('Lightthem'),
                                        onTap:() => Get.changeTheme(ThemeData.light()),
                                    ),
                                    ListTile(
                                      title: Text('Darkthem'),
                                        onTap:() =>
                                            Get.changeTheme(ThemeData.dark()),
                                           /* Get.changeTheme(ThemeData(
                                          scaffoldBackgroundColor: Colors.yellow
                                        )),*/
                                    ),
                                  ],
                          ),
                        ),
                      backgroundColor: Colors.white,
                      barrierColor: Colors.black.withOpacity(0.7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.red,
                          width:1
                        )
                      ),
                      elevation: 100,
                     /* enableDrag: false,
                      isDismissible: false*/
                      enterBottomSheetDuration:Duration(microseconds: 3),
                      exitBottomSheetDuration: Duration(microseconds: 3)

                    )
                    ,child: Text("Show Bottomsheet"))
              ],
            ),
          ));
  }
}