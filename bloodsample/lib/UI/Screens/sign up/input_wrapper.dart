
import 'package:bloodsample/UI/Screens/sign%20up/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../Widget/custom_elevated_button_widget.dart';
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
                    text: "Sign Up",
                    textColor: Colors.black,
                    onPressed: () {

                      if (controller.formkey.currentState!.validate()) {
                        controller.signUp();
                        Get.to(());
                      }

                    },
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Already have an account? sign in',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
