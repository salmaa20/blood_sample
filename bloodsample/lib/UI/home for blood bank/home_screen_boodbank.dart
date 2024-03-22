import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../Widget/custom_home_container_widget.dart';
import '../Screens/WelcomeScreen/welcome_screen.dart';

class HomeScreenBank extends StatefulWidget {
  const HomeScreenBank({super.key});
  @override
  State<HomeScreenBank> createState() => _HomeScreenBankState();
}
class _HomeScreenBankState extends State<HomeScreenBank> {
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
                  SizedBox(height: 30,),
                  Image(
                    image: AssetImage('assets/images/blood bank home.jpg'),
                  ),
                  SizedBox(height: 40,),
                  Text("Services:                             ", style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
                  SizedBox(height: 50,),
                  Row(children: [
                    SizedBox(width: 100,),
                    CustomHomeContainerWidget(text: '', imagePath: 'assets/images/organize camp.jpg', onPressed: (){},),
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
