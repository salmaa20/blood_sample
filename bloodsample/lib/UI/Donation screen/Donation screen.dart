import 'package:bloodsample/UI/Home%20screen_user/Home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Widget/Custom_Donation_conatiner_widget.dart';

class DonationScreen extends StatefulWidget {
  const DonationScreen({super.key});
  @override
  State< DonationScreen> createState() => _DonationScreenState();
}
class _DonationScreenState extends State< DonationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        width: Get.width,
        height: Get.height,
        color: Color(0xffffffff),
    child: SingleChildScrollView(
    child: Center(
    child: Column(children: [
    Row(
    children: [
    IconButton(
    onPressed: () {
    Get.to(HomeScreen());
    },
    icon: Icon(Icons.arrow_back_outlined),
    color: Color(0xff0A0A0A),

    ),
    SizedBox(width: 280,),
    Image.asset('assets/images/small_logo-removebg-preview.png'),
    ],
    ),
    Text("  Sample Donation                          ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
      CustomDonationContainerWidget(text: '', imagePath: 'assets/images/Donate blood.jpg', onPressed: (){},),
    Text("  Search Samples                            ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
      CustomDonationContainerWidget(text: '', imagePath: 'assets/images/find blood.jpg', onPressed: (){},),
      Text("  Carvans & events                                ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
      CustomDonationContainerWidget(text: '', imagePath: 'assets/images/show events.jpg', onPressed: (){},),
       ] ),
    ),
    ),
    ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: IconButton(
                  onPressed: () {Get.to(HomeScreen());},
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.grey.shade700,
                    size: 30,
                  )),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey.shade700,
                  size: 30,
                )),
            IconButton(
              onPressed: () {
                Get.to(() );
              },
              icon: Icon(
                Icons.person_outlined,
                color: Colors.grey.shade700,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
