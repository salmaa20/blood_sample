import 'package:flutter/material.dart';

class MiniElevatedButton extends StatelessWidget{
  // ignore: prefer_const_constructors_in_immutables
  MiniElevatedButton({super.key, required this.text,  required this.onPressed });

  final String text;
  final Function? onPressed;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return  Container(
      width: 170,
      height: 50,
      child: ElevatedButton(onPressed: (){
        onPressed!();
        // ignore: sort_child_properties_last
      }, child:Text(text , style: const TextStyle(color: Colors.white , fontSize: 20 , fontWeight: FontWeight.bold),),
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), bottomRight: Radius.circular(40),
                  topRight: Radius.circular(20), bottomLeft: Radius.circular(20))),
       backgroundColor: const Color(0XFF18B0E8),
        ),
      ),
    );
  }


}