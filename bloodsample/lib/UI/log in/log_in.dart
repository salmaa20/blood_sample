
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../Widget/custom_elevated_button_widget.dart';
import '../../Widget/custom_text_form_field_widget.dart';
import '../Screens/WelcomeScreen/welcome_screen.dart';

import '../Screens/sign up for user/sign_up.dart';
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
              color:Color(0xffffffff) ,
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
                      Image(image: AssetImage('assets/images/logooo.jpeg'),),
                      SizedBox(height: 0,),
                      Text("       Login       " , style: TextStyle(fontSize: 40),),
                      SizedBox(height: 5,),
                      Container(
                          height: 600,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: Form(
                            key: controller.formkey,
                            child: Column(
                              children: [
                                SizedBox(height: 30,),
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

                                CustomElevatedButtonWidget
                                  (text: "Sign In", textColor: Colors.white, onPressed: (){
                                  if (controller.formkey.currentState!.validate()) {
                                    controller.signIn();
                                  }
                                }),
                                const Text('______or______',style: TextStyle(color: Color(0XFFBCBCBC)),),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      icon: Image.asset('assets/images/fb-logo 1.jpg'),
                                      iconSize: 10,
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Image.asset('assets/images/Google__G__logo 1.png'),
                                      iconSize: 50,
                                      onPressed: () {},
                                    ),
                                  ],),
                                SizedBox(height: 30,),
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