import 'dart:io';

import 'package:flutter/material.dart';
import 'controllers/binding_depndency_injection.dart';
import 'fetchApi/view/show_products.dart';
import 'screens/other/changethem.dart';
import 'screens/other/learn_dependency_injection.dart';
import 'screens/other/translate.dart';
import 'translate/messages .dart';
import 'package:flutter_app_getx/screens/other/increment_uniqid.dart';
import 'package:flutter_app_getx/screens/other/other.dart';
import 'package:flutter_app_getx/screens/other/page1.dart';
import 'package:flutter_app_getx/screens/other/increment.dart';
import 'screens/home/home.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/other/bottomsheet.dart';
import 'screens/other/dialog.dart';
import 'screens/other/gotopage.dart';
import 'screens/other/increment_controller.dart';
import 'screens/other/snackbar.dart';
import 'screens/other/unknowroute.dart';

void main() {
  runApp(const MyApp());
}
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx Samples',
      translations: messages(),// your translations

      //initialBinding: binding_depndency_injection(),//binding
      locale: Locale('en', 'US'), // translations will be displayed in that locale
      fallbackLocale: Locale('en', 'UK'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      unknownRoute: GetPage(name: '/unknowroute',page: () => unknowroute()),
      defaultTransition: Transition.cupertino,
      getPages: [
        GetPage(
          name: '/',
          page: () => Home(),
        ),
        GetPage(
          name: '/increment',
          page: () => increment(),
        ),
        //You can define a different page for routes with arguments, and another without arguments, but for that you must use the slash '/' on the route that will not receive arguments as above.
        GetPage(
          name: '/changethem',
          page: () => changethem(),
        ),
        GetPage(
          name: '/bottomsheet',
          page: () => bottom_sheet(),
        ),
        GetPage(
          name: '/dialog',
          page: () => dialog(),
        ),
        GetPage(
          name: '/Snackbar',
          page: () => snackbar(),
        ),
        GetPage(
          name: '/gotopage',
          page: () => gotopage(),
        ),

        GetPage(
        name: '/increment_controller',
        page: () => increment_controller(),
        ),
        GetPage(
          name: '/incrementuniqid',
          page: () => increment_uniq_id(),
        ),
        GetPage(
          name: '/translate',
          page: () => translate(),
        ),
        GetPage(
          name: '/dependency_injection',
          page: () => learn_dependency_injection(),binding: binding_depndency_injection()
        ),
        GetPage(
          name: '/show_product',
          page: () => show_products(),
        ),
        GetPage(
          name: '/other',
          page: () => other(),
        ),
      ],
      home:  Home(),
    );
  }

}


