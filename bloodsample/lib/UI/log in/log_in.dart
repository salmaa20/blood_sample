
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../Widget/custom_elevated_button_widget.dart';
import '../../Widget/custom_text_form_field_widget.dart';
import '../Screens/WelcomeScreen/welcome_screen.dart';
import '../Screens/sign up/sign_up.dart';
import 'login_controller.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatefulWidget{
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: LogInController(),
        builder: (LogInController controller)
        {
          return  Scaffold(
            body: Container(
              width: Get.width,
              height: Get.height,
              color:Color(0xffDEE4E7) ,
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Get.to(WelcomeScreen());
                          },
                            icon: Icon(Icons.arrow_back_outlined) ,color: Color(0xff0A0A0A),),
                        ],
                      ),
                      Image(image: AssetImage('assets/images/logo.jpg'),),
                      SizedBox(height: 10,),
                      Text("Login       " , style: TextStyle(fontSize: 30),),
                      SizedBox(height: 120,),
                      Container(
                          height: 600,
                          decoration: BoxDecoration(
                            color: Colors.white38,

                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Form(
                            key: controller.formkey,
                            child: Column(
                              children: [
                                SizedBox(height: 40,),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text("          Email"),
                                  ],
                                ),
                                CustomTextFormFieldWidget
                                  (Controller: controller.emailaddressController,
                                  validator: controller.emailValidator,
                                  keyboardType: TextInputType.emailAddress,
                                  textfieldHint: "Enter Your Email",
                                  ispasswordField: false,
                                  obscureText: false,
                                  SuffixColor: Colors.transparent,
                                  FillColor: Colors.white38,),

                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text("          Password"),
                                  ],
                                ),

                                CustomTextFormFieldWidget(Controller: controller.passwordController, validator: controller.passwordValidator, keyboardType: TextInputType.visiblePassword,
                                  textfieldHint: "Enter Your Password",
                                  ispasswordField: true,
                                  obscureText: true ,
                                  SuffixColor: Colors.transparent,
                                  FillColor: Colors.white38,),
                                Row(children: [
                                  SizedBox(width: 250,),
                                  TextButton(onPressed: (){
                                   // Get.to(ForgotPassScreen());
                                  }, child: Text("Forgot Password",
                                    style: TextStyle(color: Color(0xff666666)),)),
                                ],),

                                CustomElevatedButtonWidget(text: "Sign In", textColor: Colors.white, onPressed: (){
                                  if (controller.formkey.currentState!.validate()) {
                                    controller.signIn();
                                  }
                                }),
                                SizedBox(height: 40,),

                                Row(
                                  children: [
                                    SizedBox(width: 60,),
                                    Text("Dont have an account?" , style: TextStyle(color: Color(0xff0A0A0A)),),
                                    TextButton
                                      (onPressed: () {
                                      Get.to(Signup());
                                    },
                                        child: Text(" Sign up for free!", style: TextStyle(color: Color(0xff666666)),))
                                  ],
                                )
                              ],

                            )  ,



                          )
                      ),
                    ]
                    ,
                  ),
                ),
              ),
            ),
          );

        }
    );

  }
}