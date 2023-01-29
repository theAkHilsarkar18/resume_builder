import 'package:flutter/material.dart';
import 'package:resume_builder/datascreen.dart';
import 'package:resume_builder/homeScreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
        'screen2' : (context) => DataScreen(),
      }
    ),
  );
}