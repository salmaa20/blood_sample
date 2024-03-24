import 'package:bloodsample/UI/otp%20verification/otp_verification_screen.dart';
import 'package:bloodsample/UI/successfully%20changed%20screen/successfully_changed_screen.dart';
import 'package:bloodsample/Widget/custom_elevated_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

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
                IconButton(onPressed: (){Get.to(const OtpVerification());},
                    icon: Icon(Icons.arrow_back,color: Colors.black,size: 33,))
              ],
            ),
            Row(
              children: [
                Text("  Create New Password",style: TextStyle(
                    color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25
                ),),
              ],
            ),
            Row(
              children: [
                Text("   Let's create new password \n"
                    "   for your account. ",
                  style: TextStyle(color: Colors.black,fontSize: 22),),
              ],
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/new_password.png'),
                    fit: BoxFit.contain,
                  )),
            ),
            TextFormField(decoration: InputDecoration(
                hintText: "New Password",
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
                )  )),
            TextFormField(decoration: InputDecoration(
                hintText: "Re-Enter Password",
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
                )  )),
            CustomElevatedButtonWidget(text: "Save", textColor: Colors.white, onPressed:  (){Get.to(const SuccessfullyChangedScreen());})
            //MiniElevatedButton(text: "save", onPressed: (){Get.to(const SuccessfullyChanged());}),

          ],
        ),
      ),
    );
  }
}
