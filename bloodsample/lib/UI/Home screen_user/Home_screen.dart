import 'package:bloodsample/UI/Donation%20screen/Donation%20screen.dart';
import 'package:bloodsample/UI/WelcomeScreen/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Widget/custom_home_container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
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
                      Get.to(WelcomeScreen());
                    },
                    icon: Icon(Icons.arrow_back_outlined),
                    color: Color(0xff0A0A0A),

                  ),
                  SizedBox(width: 280,),
                  Image.asset('assets/images/small_logo-removebg-preview.png'),
                ],
              ),
              Text("TIPS                                     ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              Text("FOR TODAY                         ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              Image(
                image: AssetImage('assets/images/home photo.png'),
              ),
              Text("Services:                             ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
              Row(children: [
                SizedBox(width: 15,),
                CustomHomeContainerWidget( text: '', imagePath: 'assets/images/check healthhhh.jpg', onPressed: (){},),
                CustomHomeContainerWidget(text: '', imagePath: 'assets/images/donationnnn.jpg', onPressed: (){Get.to(DonationScreen());},),
             ] )
                ],
                )

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
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ]),
              child: IconButton(
                  onPressed: () {},
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
      ));
  }
}
