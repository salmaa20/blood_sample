
import 'package:bloodsample/UI/Screens/RegisterScreen/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../Widget/custom_elevated_button_widget.dart';
import '../../Widget/custom_text_form_field_widget.dart';
import '../Screens/WelcomeScreen/welcome_screen.dart';

import '../Screens/sign up for user/sign_up.dart';
import '../home for blood bank/home_screen_boodbank.dart';
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
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(onPressed: (){
                            Get.to(RegisterScreen());
                          },
                            icon: Icon(Icons.arrow_back_outlined) ,color: Color(0xff0A0A0A),),
                        ],
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/logooo.jpeg'),
                              fit: BoxFit.contain,
                            )),
                      ),

                      Text("       Login       " , style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),

                      Form(
                        key: controller.formkey,
                        child: Column(
                          children: [
                            Row(
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

                            //SizedBox(height: 20,),
                            Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text("          Password"),
                              ],
                            ),
                            //SizedBox(height: 30,),
                            CustomTextFormFieldWidget(Controller: controller.passwordController, validator: controller.passwordValidator, keyboardType: TextInputType.visiblePassword,
                              textfieldHint: "Enter Your Password",
                              ispasswordField: true,
                              obscureText: true ,
                              SuffixColor: Colors.transparent,
                              FillColor: Colors.white38,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                              TextButton(onPressed: (){
                               // Get.to(ForgotPassScreen());
                              }, child: Text("Forgot Password",
                                style: TextStyle(color: Color(0XFF4DC4EF)),)),
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
                            //SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 60,),
                                Text("Dont have an account?" , style: TextStyle(color: Color(0xff0A0A0A)),),
                                TextButton
                                  (onPressed: () {
                                  Get.to(HomeScreenBank());
                                },
                                    child: Text(" Sign up for free!", style: TextStyle(color: Color(0XFF4DC4EF)),))
                              ],
                            )
                          ],

                        )  ,



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