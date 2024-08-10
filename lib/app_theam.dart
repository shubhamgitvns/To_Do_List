import 'package:flutter/material.dart';

class App_Text{
  static final TextStyle button_text =
  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25);

  static final TextStyle label =
  TextStyle(fontSize: 16,color: Colors.green,fontWeight: FontWeight.w400);

  static final Color button_color= Colors.teal;



  // Input Text var
  static TextEditingController number = TextEditingController();
  static TextEditingController password = TextEditingController();

}

class Support_container {
  static final BoxDecoration box = BoxDecoration(
    border: Border.all(color: Colors.green.shade100),
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.green.shade500,
        offset: const Offset(
          2.0,
          2.0,
        ),
        blurRadius: 5.0,
        spreadRadius: 1.0,
      ), //BoxShadow
      const BoxShadow(
        color: Colors.white,
        offset: Offset(0.0, 0.0),
        blurRadius: 0.0,
        spreadRadius: 0.0,
      ), //BoxShadow
    ],
  );
}