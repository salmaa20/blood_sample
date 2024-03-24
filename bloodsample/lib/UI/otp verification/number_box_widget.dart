import 'package:flutter/material.dart';

class NumberBox extends StatelessWidget {
  const NumberBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          color: Color(0XFFD9D9D9),
          child: Stack(
            children: [
              Center(child: Text("1"))
            ],
          ) ,
        ),
        SizedBox(width: 10,),
        Container(
          width: 50,
          height: 50,
          color: Color(0XFFD9D9D9),
          child: Stack(
            children: [
              Center(child: Text("2"))
            ],
          ) ,
        ),
        SizedBox(width: 10,),
        Container(
          width: 50,
          height: 50,
          color: Color(0XFFD9D9D9),
          child: Stack(
            children: [
              Center(child: Text("3"))
            ],
          ) ,
        ),
        SizedBox(width: 10,),
        Container(
          width: 50,
          height: 50,
          color: Color(0XFFD9D9D9),
          child: Stack(
            children: [
              Center(child: Text("4"))
            ],
          ) ,
        ),
      ],
    );
  }
}
