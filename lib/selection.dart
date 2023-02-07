import 'package:flutter/material.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  State<SelectionScreen> createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(child: Container(height: 355,width: 100,color: Colors.teal.shade200)),
                  SizedBox(width: 5,),
                  Expanded(child: Container(height: 355,width: 100,color: Colors.teal.shade400)),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Expanded(child: Container(height: 355,width: 100,color: Colors.teal.shade200)),
                  SizedBox(width: 5,),
                  Expanded(child: Container(height: 355,width: 100,color: Colors.teal.shade400)),
                ],
              ),
            ],
          )
      ),
    );
  }
}
