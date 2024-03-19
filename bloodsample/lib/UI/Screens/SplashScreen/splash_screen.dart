import 'package:bloodsample/UI/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splash_view/source/presentation/pages/splash_view.dart';
import 'package:splash_view/source/presentation/widgets/done.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashView(
      backgroundColor: Colors.white,
      duration: const Duration(seconds: 7),
      done: Done(const WelcomeScreen()),
      logo: const Image(image: AssetImage('assets/images/logo.jpg',),fit: BoxFit.fill,),
    );
  }

}