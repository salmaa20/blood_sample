
import 'package:bloodsample/UI/Screens/sign%20up%20for%20user/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Widget/custom_elevated_button_widget.dart';
import '../../Donation screen/Donation screen.dart';
import '../../Home screen_user/Home_screen.dart';
import 'input_field.dart';

// ignore: use_key_in_widget_constructors
class InputWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: SignUpController(),
        builder: (SignUpController controller) {
          return Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: InputField(),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomElevatedButtonWidget(
                    text: "complete Register",
                    textColor: Colors.white,
                    onPressed: () {

                      if (controller.formkey.currentState!.validate()) {
                        controller.signUp();
                        Get.to((HomeScreen()));
                      }

                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an Account ?',
                          style: TextStyle(color: Color(0XFF867B7B),fontSize: 15,)),
                      InkWell(
                          onTap: (){
                            Get.to(DonationScreen());
                          },
                          child: const Text('sign in ', style: TextStyle(color: Color(0XFF4DC4EF),fontSize: 15 ),))
                    ],
                  )],
              ),
            ),
          );
        });
  }
}
