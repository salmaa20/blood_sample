import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Donation conditions/Donation_conditions.dart';
import '../Home screen_user/Home_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State< ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State< ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/people 1.png'),
                SizedBox(height: 10,),
                Text(
                  'Demo name',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Pacifico',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150,
                  child: Divider(
                    color: Colors.black12,
                  ),
                ),
                InkWell(
                    child: Card(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        title: Text(
                          '+229 96119149',
                          style: TextStyle(
                              fontFamily: 'SourceSansPro',
                              fontSize: 20,
                              color: Colors.black),
                        ),
                      ),

                    ),
                    onTap: () {}
                ),
                InkWell(
                  child: Card(
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Demo12@gmail.com',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  onTap: () {
                  },
                ),
                InkWell(
                  child: Card(
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Smouha Alexandria,Egypt',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Card(
                    margin: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 25.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.logout_outlined,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ),
                  ),
                  onTap: () {
                  },
                ),
              ],
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
                onPressed: () { Get.to(ProfileScreen()); },
                icon: Icon(
                  Icons.person_outlined,
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
              Get.to(DonationConditionScreen()); },
            icon: Icon(
              Icons.home_outlined,
              color: Colors.grey.shade700,
              size: 30,
            ),
          ),
        ],
      ),
    ));
  }
}