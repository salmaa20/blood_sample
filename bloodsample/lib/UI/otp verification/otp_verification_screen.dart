import 'package:bloodsample/UI/create%20new%20password%20screen/create_new_password_screen.dart';
import 'package:bloodsample/UI/forgot%20password/forgott_password.dart';
import 'package:bloodsample/UI/otp%20verification/number_box_widget.dart';
import 'package:bloodsample/Widget/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

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
                IconButton(onPressed: (){Get.to(const ForgotPassword());},
                    icon: Icon(Icons.arrow_back,color: Colors.black,size: 33,))
              ],
            ),
            Row(
              children: [
                Text("  OTP Verification",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25
                ),),
              ],
            ),
            Row(
              children: [
                Text("   we just sent you a message, \n"
                    "   please open it and enter the OTP \n"
                    "   code to identify your account. ",
                  style: TextStyle(color: Colors.black,fontSize: 22),),
              ],
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/otp_verification.png'),
                    fit: BoxFit.contain,
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberBox()
              ],
            ),
            CustomElevatedButtonWidget(text: "verify", textColor: Colors.white, onPressed:  (){Get.to(const CreateNewPassword());}),
            //MiniElevatedButton(text: "verify", onPressed: (){Get.to(const CreateNewPassword());}),
            Row(
              children: [
                Text("          didn't recieve OTP ?",style: TextStyle(
                    color: Colors.grey,fontSize: 20
                ),),
                InkWell(
                  onTap: (){},
                  child: Text("  Resend",style: TextStyle(
                      color: Color(0XFF18B0E8),fontSize: 20
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
