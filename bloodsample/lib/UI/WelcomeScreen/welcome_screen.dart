import 'package:bloodsample/UI/RegisterAsScreen/register_as_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/images/Launch screen.png'),
          fit: BoxFit.cover,
        )),
        child: Stack(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Let's start your health journey today with us!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 300,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(RegisterAsScreen());
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(80),
                              bottomRight: Radius.circular(80),
                              topRight: Radius.circular(40),
                              bottomLeft: Radius.circular(40))),
                      backgroundColor: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
