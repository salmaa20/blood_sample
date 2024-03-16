import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Screens/WelcomeScreen/welcome_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Color(0xffffffff),
        child: SingleChildScrollView(
          child: Center(
            child: Column(children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(WelcomeScreen());
                    },
                    icon: Icon(Icons.arrow_back_outlined),
                    color: Color(0xff0A0A0A),
                  ),
                ],
              ),
              Image(
                image: AssetImage('assets/images/logooo.jpeg'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
