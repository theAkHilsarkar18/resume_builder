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
    ModelData md1 = ModalRoute.of(context)!.settings.arguments as ModelData;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text("${md1.modelName}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSurname}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelGender}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelAddress}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelEmail}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelPhone}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSSC}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSscSchool}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelHSC}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelHscSchool}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelDegree}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelUniversity}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSk1}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSk2}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSk3}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelSk4}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelIntrest}",style: TextStyle(color: Colors.black)),
              Text("${md1.modelObjective}",style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
