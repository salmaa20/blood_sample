import 'package:bloodsample/Widget/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../otp verification/otp_verification_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,25,10,25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: (){},
                    icon: Icon(Icons.arrow_back,color: Colors.black,size: 33,))
              ],
            ),
            Row(
              children: [
                Text("  Forgot Password",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25
                ),),
              ],
            ),
            Row(
              children: [
                Text("  please enter your email below then \n"
                    "  we will have you to recover \n  your account.  ",
                  style: TextStyle(color: Colors.black,fontSize: 20),),
              ],
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/forgotpassword.png'),
                    fit: BoxFit.contain,
                  )),
            ),
            Row(
              children: [
                Text("  Enter your email address",style: TextStyle(
                    color: Colors.black,fontSize: 20
                ),),
              ],
            ),
            TextFormField(
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.black , fontWeight: FontWeight.w300),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.black54,
                            width: 2
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.5
                        )
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 3
                        )
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                            color: Colors.red,
                            width: 3
                        )
                    )  )
            ),
            CustomElevatedButtonWidget(text: "Send OTP", textColor: Colors.white, onPressed:  (){Get.to(const  OtpVerification());}),
            //MiniElevatedButton(text: "Send OTP", onPressed: (){Get.to(const OtpVerification());})
          ],
        ),
      ),
    );
  }
}