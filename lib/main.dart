import 'package:flutter/material.dart';
import 'package:resume_builder/datascreen.dart';
import 'package:resume_builder/homeScreen.dart';
import 'package:resume_builder/templates/template1.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => Template1(),
        'screen2' : (context) => DataScreen(),
        'temp1' : (context) => Template1(),
      }
    ),
  );
}