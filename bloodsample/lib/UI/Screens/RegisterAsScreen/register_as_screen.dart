
import 'package:bloodsample/UI/Screens/RegisterScreen/register_screen.dart';
import 'package:bloodsample/Widget/custom_register_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterAsScreen extends StatelessWidget {
  const RegisterAsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0XFFFCE4EC),
                  Colors.white,
                  Color(0XFFE0F7FA),
                  Color(0XFFB2EBF2),
                ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Container(
                    width: 60,
                    height: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/small_logo-removebg-preview.png'),
                          fit: BoxFit.contain,
                        )),
                  ),
                ],),
               const Align(
                 alignment: Alignment.topLeft,
                 child: Text('Register as:',
                   style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
               ),
                CustomRegisterContainerWidget(text: 'Blood  Bank', imagePath: 'assets/images/blood-bank (1) 1.png', onPressed: (){},),
                CustomRegisterContainerWidget(text: 'User', imagePath: 'assets/images/people 1.png', onPressed: (){Get.to(const RegisterScreen());},)
                


                
                /*InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        height: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/blood-bank (1) 1.png'),
                              fit: BoxFit.contain,
                            )),
                      ),
                      Text('Blood Bank',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),

                InkWell(
                  onTap: (){},
                  child: Column(
                    children: [
                      Container(
                        width: Get.width,
                        height: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/people 1.png'),
                              fit: BoxFit.contain,
                            )),
                      ),
                      Text('User',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
                    ],
                  ),
                ),
              */],
            ),
          ),
        ));
  }
}
