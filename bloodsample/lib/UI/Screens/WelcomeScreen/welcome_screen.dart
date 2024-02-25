
import 'package:bloodsample/UI/Screens/RegisterAsScreen/register_as_screen.dart';
import 'package:bloodsample/Widget/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image:AssetImage('assets/images/Launch screen.png'),
            fit: BoxFit.cover,
          )
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text("Let's start your health journey today with us!",
                  style:TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold) ,),
                const SizedBox(height: 30),
                CustomElevatedButtonWidget(text: "Continue", textColor: Colors.black,
                  onPressed: () { Get.to(const RegisterAsScreen());})
              ],
            ),
          ),]
      ),

              ),
    );
  }
}
