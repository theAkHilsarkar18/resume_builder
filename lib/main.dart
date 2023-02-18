import 'package:flutter/material.dart';
import 'package:resume_builder/datascreen.dart';
import 'package:resume_builder/homeScreen.dart';
import 'package:resume_builder/selection.dart';
import 'package:resume_builder/templates/template1.dart';
import 'package:resume_builder/templates/template2.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
        '/temp2' : (context) => Template2(),
        'selection' : (context) => SelectionScreen(),
        'screen2' : (context) => DataScreen(),
        'temp1' : (context) => Template1(),
      }
    ),
  );
}