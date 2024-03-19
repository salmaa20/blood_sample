import 'package:bloodsample/UI/log%20in/log_in.dart';
import 'package:bloodsample/Widget/custom_elevated_button_widget.dart';
import 'package:bloodsample/Widget/mini_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Home screen_user/Home_screen.dart';
import '../sign up for user/sign_up.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: Get.width,
            height: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/registerscreen photo.png'),
                  fit: BoxFit.cover,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: RichText(
              text: const TextSpan(
                text: 'Regular',
                style: TextStyle(color: Colors.black,fontSize: 30,fontStyle: FontStyle.italic), /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: ' Health Check', style: TextStyle(color: Color(0XFF4DC4EF),)),
                  TextSpan(
                      text: ' can identify any'),
                  TextSpan(
                      text: ' Early Signs ',
                      style: TextStyle(color: Color(0XFF4DC4EF), )),
                  TextSpan(
                      text: ' of health issues...'),
                ],
              ),
            ),
          ),
          CustomElevatedButtonWidget(text: "Register", textColor: Colors.white, onPressed: (){Get.to(Signup());}),

          const Text('____sign up with____',style: TextStyle(color: Color(0XFFBCBCBC)),),
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
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             const Text('Already have an Account ?',
               style: TextStyle(color: Color(0XFF867B7B),fontSize: 15,)),
             InkWell(
                 onTap: (){
                   Get.to(LoginScreen());
                 },
                 child: const Text('sign in ', style: TextStyle(color: Color(0XFF4DC4EF),fontSize: 15 ),))
           ],
         )],
      ),
    );
  }
}
