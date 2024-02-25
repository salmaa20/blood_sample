import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget{
  // ignore: prefer_const_constructors_in_immutables
  CustomElevatedButtonWidget({super.key, required this.text, required this.textColor , required this.onPressed });

  final String text;
  final Color textColor;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return  Container(
      width: 300,
      height: 50,
      child: ElevatedButton(onPressed: (){
        onPressed!();
        // ignore: sort_child_properties_last
      }, child:Text(text , style: TextStyle(color: textColor , fontSize: 20 , fontWeight: FontWeight.bold),),
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80), bottomRight: Radius.circular(80),
                  topRight: Radius.circular(40), bottomLeft: Radius.circular(40))),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }


}