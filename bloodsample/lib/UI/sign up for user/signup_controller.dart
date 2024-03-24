

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';


class SignUpController extends GetxController {
  final  formkey =  GlobalKey<FormState>();
  final usernameController =  TextEditingController();
  final phoneController =  TextEditingController();
  final emailaddressController =  TextEditingController();
  final passwordController =  TextEditingController();
  final confirmpasswordController =  TextEditingController();

  get user => null;


  String? usernameValidator (String? username){
    if (RegExp(
        r"^[\p{L} ,.'-]*$",
        caseSensitive: false, unicode: true, dotAll: true)
        .hasMatch(username!)
    ) {

    } else {
      return "   Enter Correct User Name";

    }
  }


  String? emailValidator (String? email) {
    if (RegExp(
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(email!)) {

    }
    else {
      return "   Enter Correct Email";
    }
  }

  String? phoneValidator (String? phone) {
    if (RegExp(
        r"^\+?0[0-9]{10}$")
        .hasMatch(phone!)) {

    }
    else {
      return "   Enter Correct Phone Number";
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

  String? confirmpasswordValidator(String? password) {
    if (RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password!)) {

    } else {
      return "   Enter Correct password";
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    phoneController.dispose();
    emailaddressController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
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
  void signUp() async{

    String email = emailaddressController.text ;
    String password = passwordController.text;
    // ignore: unused_local_variable
    String confirmPassword = passwordController.text;
    // ignore: unused_local_variable
    String phone = phoneController.text;
    // ignore: unused_local_variable
    String name = usernameController.text;

    if (user!= null){
      print(" User is Successfully created ");

      // ignore: prefer_const_constructors
      Get.to((
        // emailaddress: email, password: password
      ));

    } else {
      print("Some error Happened");
    }

  }

}
