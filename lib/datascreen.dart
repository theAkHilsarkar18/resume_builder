import 'package:flutter/material.dart';
import 'package:resume_builder/modelclass.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({Key? key}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  @override
  Widget build(BuildContext context) {
    ModelData m1 = ModalRoute.of(context)!.settings.arguments as ModelData;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(""),
        ),
      ),
    );
  }
}
