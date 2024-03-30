import 'package:flutter/material.dart';

class AddText{
   static TextStyle h1Bold(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    );
  }
  static TextStyle h2Bold(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }
   static TextStyle h2Light(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 20,
      // fontWeight: FontWeight.w700,
    );
  }
  static TextStyle h3(){
    return const TextStyle(
      color: Colors.black,
      fontSize: 18,
      // fontWeight: FontWeight.w700,
    );
  }
  static TextStyle textNomal(){
    return const TextStyle(
      color: Color(0xFF575757),
      fontSize: 16,
      // fontWeight: FontWeight.w700,
    );
  }
  static TextStyle textNomaWeight(){
    return const TextStyle(
      color: Color(0xFF575757),
      fontSize: 16,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle textColorH2(){
    return const TextStyle(
      color:  Color(0xFFFFA007),
      fontSize: 22,
      fontWeight: FontWeight.w700,
    );
  }
  static TextStyle textColorH3(){
    return const TextStyle(
      color:  Color(0xFFFFA007),
      fontSize: 20,
      fontWeight: FontWeight.w700,
    );
  }
   static TextStyle textColorH3NoWeight(){
    return const TextStyle(
      color:  Color(0xFFFFA007),
      fontSize: 20,
    );
  }
  static Widget appInfo(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Lương Thị Ngọc Chằm', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
        Text('Lớp: mầm non 1', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600)),
      ],
    );
  }
}