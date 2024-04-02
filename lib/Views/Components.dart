import 'package:flutter/material.dart';





  Widget myButton(double pdv, double pdh, double borderRadius, Color color , double width,double height,String text,Color textColor,void onpress()) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: pdv,horizontal: pdh),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      width: width,
      height: height,
      child: TextButton(onPressed: (){
        onpress();
      },
       child: Text(text),
           style: ButtonStyle(
               foregroundColor: MaterialStateProperty.all<Color>(textColor),
      )
      ),
    );
  }

