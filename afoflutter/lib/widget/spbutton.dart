import 'dart:js';

import 'package:flutter/material.dart';

class AddbuttonandInput{
  static Widget inputAccount(TextEditingController controller, bool obscureText,String lable, double bradius, Icon icon){
    return TextFormField(
      controller: controller,
      obscureText: obscureText ,
      decoration: InputDecoration(
        labelText: lable,
        border: const OutlineInputBorder(),
        suffix: icon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(bradius)),
          borderSide: const BorderSide(
            color: Color(0xFFFFA007),
          )
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          borderSide: BorderSide(
            color: Color(0xFFFFA007),
          )
        )
      ),
    );
  }

  static Widget inputFunction(String image, String nameFunction, Widget function, BuildContext context){
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> function));
      },
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(image)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3)
                )
              ],
              borderRadius: const BorderRadius.all(Radius.circular(8))
            )
          ),
          const SizedBox(height: 8,),
          Text(nameFunction, style: const TextStyle(fontSize: 16, color: Colors.black),)
        ]),
    );
  }
  static Widget buttonWeek(String name, double height, double width, Color color, Color colorText, double fontSize){
    return ElevatedButton(onPressed: (){

      },
     // ignore: sort_child_properties_last
     child: Text(name, style:  TextStyle(color: colorText, fontSize: fontSize),),
     style: ElevatedButton.styleFrom(
      backgroundColor: color,
      fixedSize: Size(width, height),
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )
     ),
    );
  }
  static Widget buttonDialog(Function function,String name, double height, double width, Color color, Color colorText, double fontSize){
    return ElevatedButton(onPressed: (){
        function;
      },
     // ignore: sort_child_properties_last
     child: Text(name, style:  TextStyle(color: colorText, fontSize: fontSize),),
     style: ElevatedButton.styleFrom(
      backgroundColor: color,
      fixedSize: Size(width, height),
      shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      )
     ),
    );
  }
}