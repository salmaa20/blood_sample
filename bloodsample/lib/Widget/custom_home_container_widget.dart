
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomHomeContainerWidget extends StatelessWidget {
  const CustomHomeContainerWidget({super.key,
    required this.text,
    required this.onPressed,
    required this.imagePath,
  });

  final String text;
  final String imagePath ;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: (){
          onPressed();
        },
        child: Column(
          children: [
            Container(
              width: 180,
              height: 230,
              decoration:  BoxDecoration(
                  image: DecorationImage(
                    image:  AssetImage("${imagePath}"),
                    fit: BoxFit.contain,
                  )),
            ),
            Text(text,style: const TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w400),),
          ],
        ),
      );
  }
}
