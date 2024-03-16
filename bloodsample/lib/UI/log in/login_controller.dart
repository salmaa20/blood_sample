
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class LogInController extends GetxController {
  final formkey = GlobalKey<FormState>();
  final emailaddressController = TextEditingController();
  final passwordController = TextEditingController();

  get user => null;


  String? emailValidator(String? email) {
    if (RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(email!)) {

    }
    else {
      return "   Enter Correct Email";
    }
  }


  String? passwordValidator(String? password) {
    if (RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password!)) {

    } else {
      return "   Enter Correct password";
    }
  }


  @override
  void dispose() {
    emailaddressController.dispose();
    passwordController.dispose();
    super.dispose();
  }


  saveAndValidate() {
    var formdata = formkey.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print("valide");
    }
    else {
      print("not valide");
    }
  }


  void signIn() async {
    String email = emailaddressController.text;
    String password = passwordController.text;

    if (user != null) {
      // ignore: prefer_const_constructors
      Get.to((
        //  emailaddress: email, password: password
      ));
    } else {
      print("Some error Happened");
    }
  }


}