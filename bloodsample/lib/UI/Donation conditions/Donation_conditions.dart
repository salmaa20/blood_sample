
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonationConditionScreen extends StatefulWidget {
  const DonationConditionScreen({super.key});
  @override
  State< DonationConditionScreen> createState() => _DonationConditionScreenState();
}
class _DonationConditionScreenState extends State< DonationConditionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.lightBlue,),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(children: [
            Row(
          children: [
            SizedBox(height: 70,),
            SizedBox(width: 15,),
            Image.asset('assets/images/img.png'),
            SizedBox(width: 5,),
            Text(" Weight not less than 50 kilograms."),

            ]),
            Row(
              children: [
                SizedBox(height: 70,),
                SizedBox(width: 15,),
                Image.asset('assets/images/img_1.png'),
                SizedBox(width: 5,),
                Text(" Age from 18 to 60 years."),

        ],
      ),
            Row(
              children: [
                SizedBox(height: 70,),
                SizedBox(width: 15,),
                Image.asset('assets/images/img_2.png'),
                SizedBox(width: 5,),
                Text("Blood pressure from 60/90 to 100/120."),

              ],
            ),
            Row(
              children: [
                SizedBox(height: 70,),
                SizedBox(width: 15,),
                Image.asset('assets/images/img_3.png'),
                SizedBox(width: 5,),
                Text("Anemia for men from 13:18 & women from12:18"),

              ],
            ),
            Row(
              children: [
                SizedBox(height: 70,),
                SizedBox(width: 15,),
                Image.asset('assets/images/img_4.png'),
                SizedBox(width: 5,),
                Text("He doesnt take medications that prevent donation."),

              ],
            ),
            Row(
              children: [
                SizedBox(height: 70,),
                SizedBox(width: 15,),
                Image.asset('assets/images/img_5.png'),
                SizedBox(width: 5,),
                Text("Heart rate ranges from 60 to 100."),

              ],
            ),
            Row(
              children: [
                SizedBox(height: 70,),
                SizedBox(width: 15,),
                Image.asset('assets/images/img_6.png'),
                SizedBox(width: 5,),
                Text("The person must not suffer from chronic diseases."),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 80,),
                Image.asset('assets/images/img_7.png'),
               ],
            ),
    ]),
     ),
    )
    );

  }
}