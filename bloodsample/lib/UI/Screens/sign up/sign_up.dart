
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'header.dart';
import 'input_wrapper.dart';


// ignore: use_key_in_widget_constructors
class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color:Color(0xffDEE4E7) ,
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5,),
              Header(),
              Expanded(child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),

                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ]
                ),

                child: InputWrapper(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

