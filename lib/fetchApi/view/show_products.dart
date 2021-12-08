// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_app_getx/fetchApi/controller/product_Controller.dart';
import 'package:flutter_app_getx/fetchApi/model/product.dart';
import 'package:get/get.dart';
class show_products extends StatelessWidget {
  product_controller prc = Get.put(product_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("show products"),
      ),
      body: build_body(),
    );
  }

  Widget build_body() {

    return new Obx(() {
      if(prc.loading.value){

          return Center(
          child: CircularProgressIndicator(),
        );
      }
      return Container(
          child: GridView.builder(itemCount: prc.products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
            ),
            itemBuilder: (BuildContext context, int index) {
              product prd=prc.products[index];
              // print("link :"+prd.imageUrl.toString());
              return  Container(

                child: Column(
                  children: [
                    Expanded(
                        child: Container(
                      width:double.infinity,

                      child: Image.network(prd.imageUrl.toString(),fit:BoxFit.cover,),
                    )),
                    new Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Text(prd.productName.toString()),
                    ),
                    new Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Text("price:"+prd.price.toString()),
                    ),

                  ],

                ),
              );

            },
          )
      );
    });
  }
}
