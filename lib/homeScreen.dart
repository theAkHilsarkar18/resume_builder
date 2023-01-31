import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:resume_builder/modelclass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // declaration for image path
  String path = "";

  //Declaration section for skills
  bool skill1 = true;
  bool skill2 = true;
  bool skill3 = true;
  bool skill4 = true;

  String? sk1;
  String? sk2;
  String? sk3;
  String? sk4;

  //Declaration section for radio button
  String selected = "Male";

  //Declaration section for area of interest
  String selectedIntrest = "Flutter Development";

  //TextEditing Controller
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController sscSchool = TextEditingController();
  TextEditingController ssc = TextEditingController();
  TextEditingController hscSchool = TextEditingController();
  TextEditingController hsc = TextEditingController();
  TextEditingController university = TextEditingController();
  TextEditingController degree = TextEditingController();
  TextEditingController objective = TextEditingController();

  String? txtName;
  String? txtSurname;
  String? txtAddress;
  String? txtEmail;
  String? txtPhone;
  String? txtSSC;
  String? txtSchoolSSC;
  String? txtHSC;
  String? txtSchoolHSC;
  String? txtDegree;
  String? txtUniversity;
  String? txtObjective;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  gradient: LinearGradient(
                    colors: [
                      Colors.teal.shade900,
                      Colors.teal.shade700,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "CV",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 1,
                        ),
                        Container(height: 10, width: 50, color: Colors.teal),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Resume",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              letterSpacing: 2),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    Expanded(
                        child: SizedBox(
                      width: 10,
                    )),
                    Text(
                      "TheAkhilSarkar",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Column(
                children: [
                  //personal info
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.teal.shade800,
                        collapsedBackgroundColor: Colors.teal.shade700,
                        collapsedTextColor: Colors.white,
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        leading:
                            Icon(Icons.person, color: Colors.white, size: 20),
                        title: Text(
                          "Personal Info",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 18),
                        ),
                        children: [

                          InkWell(
                            onTap : ()async{
                              ImagePicker imagepicker = ImagePicker();
                              XFile? xfile = await imagepicker.pickImage(source: ImageSource.gallery);
                              setState(() {
                                path = xfile!.path;
                              });
                            },
                            child: CircleAvatar(
                              radius: 60,
                              child: path.isEmpty
                                  ? CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage("assets/person.png"),
                                backgroundColor: Colors.teal.shade600,
                              )
                                  : CircleAvatar(
                                radius: 60,
                                backgroundImage: FileImage(
                                  File("$path"),
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: name,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                      decoration: InputDecoration(
                                          labelText: "Name",
                                          labelStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                width: 1.5,
                                                color: Colors.white,
                                              ))),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: 200,
                                    child: TextFormField(
                                      controller: surname,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                      decoration: InputDecoration(
                                          labelText: "Surname",
                                          labelStyle: TextStyle(
                                            letterSpacing: 1,
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            borderSide: BorderSide(
                                              color: Colors.white,
                                            ),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.white,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                width: 1.5,
                                                color: Colors.white,
                                              ))),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Expanded(
                              child: Container(
                                height: 40,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        color: Colors.white, width: 1.5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      children: [
                                        Radio(
                                          activeColor: Colors.white,
                                          value: "Male",
                                          groupValue: selected,
                                          onChanged: (value) {
                                            setState(
                                              () {
                                                selected = value!;
                                              },
                                            );
                                          },
                                        ),
                                        Text(
                                          "Male",
                                          style: TextStyle(
                                              letterSpacing: 1,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: [
                                        Radio(
                                          activeColor: Colors.white,
                                          value: "Female",
                                          groupValue: selected,
                                          onChanged: (value) {
                                            setState(
                                              () {
                                                selected = value!;
                                              },
                                            );
                                          },
                                        ),
                                        Text(
                                          "Female",
                                          style: TextStyle(
                                              letterSpacing: 1,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              child: TextFormField(
                                controller: address,
                                keyboardType: TextInputType.name,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                                decoration: InputDecoration(
                                    labelText: "Address",
                                    labelStyle: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 35,
                              width: double.infinity,
                              child: TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                                decoration: InputDecoration(
                                    labelText: "Email",
                                    labelStyle: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ))),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 35,
                              width: double.infinity,
                              child: TextFormField(
                                controller: phone,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                                decoration: InputDecoration(
                                    labelText: "Phone",
                                    labelStyle: TextStyle(
                                      letterSpacing: 1,
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: BorderSide(
                                          width: 1.5,
                                          color: Colors.white,
                                        ))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //
                  //

                  //education
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.teal.shade800,
                        collapsedBackgroundColor: Colors.teal.shade700,
                        collapsedTextColor: Colors.white,
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        leading:
                            Icon(Icons.school, color: Colors.white, size: 20),
                        title: Text(
                          "Education",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 18),
                        ),
                        children: [
                          Column(
                            children: [
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      //1 ssc school name
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 35,
                                            width: 200,
                                            child: TextFormField(
                                              controller: sscSchool,
                                              keyboardType: TextInputType.name,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                              decoration: InputDecoration(
                                                labelText: "School Name",
                                                labelStyle: TextStyle(
                                                  letterSpacing: 1,
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.white,
                                                            width: 2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                    width: 1.5,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // ssc
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          width: 80,
                                          child: TextFormField(
                                            controller: ssc,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              letterSpacing: 1,
                                            ),
                                            decoration: InputDecoration(
                                              labelText: "SSC %",
                                              labelStyle: TextStyle(
                                                letterSpacing: 1,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  width: 1.5,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      // 2 hsc school name
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 35,
                                            width: 300,
                                            child: TextFormField(
                                              controller: hscSchool,
                                              keyboardType: TextInputType.name,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                              decoration: InputDecoration(
                                                labelText: "School Name",
                                                labelStyle: TextStyle(
                                                  letterSpacing: 1,
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.white,
                                                            width: 2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                    width: 1.5,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      //hsc
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 35,
                                          width: 80,
                                          child: TextFormField(
                                            controller: hsc,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              letterSpacing: 1,
                                            ),
                                            decoration: InputDecoration(
                                              labelText: "HSC %",
                                              labelStyle: TextStyle(
                                                letterSpacing: 1,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  width: 1.5,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // degree college name
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 35,
                                            width: 300,
                                            child: TextFormField(
                                              controller: university,
                                              keyboardType: TextInputType.name,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                              decoration: InputDecoration(
                                                labelText: "University Name",
                                                labelStyle: TextStyle(
                                                  letterSpacing: 1,
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                            color: Colors.white,
                                                            width: 2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10)),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  borderSide: BorderSide(
                                                    width: 1.5,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // degree
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          height: 35,
                                          width: 100,
                                          child: TextFormField(
                                            controller: degree,
                                            keyboardType: TextInputType.name,
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              letterSpacing: 1,
                                            ),
                                            decoration: InputDecoration(
                                              labelText: "Degree",
                                              labelStyle: TextStyle(
                                                letterSpacing: 1,
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.white,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  width: 1.5,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //skills
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.teal.shade800,
                        collapsedBackgroundColor: Colors.teal.shade700,
                        collapsedTextColor: Colors.white,
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.workspace_premium,
                            color: Colors.white, size: 20),
                        title: Text(
                          "Skills",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 18),
                        ),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                    side: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    ),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: skill1,
                                    onChanged: (value) {
                                      setState(() {
                                        skill1 = value!;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "C",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    side: BorderSide(
                                        color: Colors.white, width: 2),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: skill2,
                                    onChanged: (value) {
                                      setState(() {
                                        skill2 = value!;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "C++",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    side: BorderSide(
                                        color: Colors.white, width: 2),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: skill3,
                                    onChanged: (value) {
                                      setState(() {
                                        skill3 = value!;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Dart",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //area of intrest
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.teal.shade800,
                        collapsedBackgroundColor: Colors.teal.shade700,
                        collapsedTextColor: Colors.white,
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.offline_bolt_outlined,
                            color: Colors.white, size: 20),
                        title: Text(
                          "Main Segment",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 18),
                        ),
                        children: [
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                value: "Flutter Development",
                                groupValue: selectedIntrest,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedIntrest = value!;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Flutter Devlopment",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                value: "Android Development",
                                groupValue: selectedIntrest,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedIntrest = value!;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Android Development",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                value: "iOS Development",
                                groupValue: selectedIntrest,
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedIntrest = value!;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "iOS Development",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                groupValue: selectedIntrest,
                                value: "Graphics Design",
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedIntrest = value!;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Graphics Design",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Radio(
                                activeColor: Colors.white,
                                groupValue: selectedIntrest,
                                value: "UI/UX",
                                onChanged: (value) {
                                  setState(
                                    () {
                                      selectedIntrest = value!;
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "UI/UX",
                                style: TextStyle(
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  //objective
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(3),
                        topRight: Radius.circular(3),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        childrenPadding: EdgeInsets.all(10),
                        backgroundColor: Colors.teal.shade800,
                        collapsedBackgroundColor: Colors.teal.shade700,
                        collapsedTextColor: Colors.white,
                        collapsedIconColor: Colors.white,
                        iconColor: Colors.white,
                        leading: Icon(Icons.center_focus_strong_outlined,
                            color: Colors.white, size: 20),
                        title: Text(
                          "Objective",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 18),
                        ),
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: double.infinity,
                                    child: TextFormField(
                                      controller: objective,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                      decoration: InputDecoration(
                                        labelText: "Objective",
                                        labelStyle: TextStyle(
                                          letterSpacing: 1,
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                            color: Colors.white,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          borderSide: BorderSide(
                                            width: 1.5,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              InkWell(
                onTap: () {
                  txtName = name.text;
                  txtSurname = surname.text;
                  txtAddress = address.text;
                  txtEmail = email.text;
                  txtPhone = phone.text;
                  txtSSC = ssc.text;
                  txtHSC = hsc.text;
                  txtDegree = degree.text;
                  txtObjective = objective.text;
                  txtSchoolSSC = sscSchool.text;
                  txtSchoolHSC = hscSchool.text;
                  txtUniversity = university.text;
                  //
                  //
                  if (skill1 == true) {
                    sk1 = "C";
                  } else {
                    sk1 = "";
                  }
                  //
                  //
                  if (skill2 == true) {
                    sk2 = "C++";
                  } else {
                    sk2 = "";
                  }
                  //
                  //
                  if (skill3 == true) {
                    sk3 = "Dart";
                  } else {
                    sk3 = "";
                  }
                  //
                  //
                  if (skill4 == true) {
                    sk4 = "Java";
                  } else {
                    sk4 = "";
                  }
                  //

                  setState(() {
                    ModelData m1 = ModelData(
                      modelName: txtName,
                      modelSurname: txtSurname,
                      modelGender: selected,
                      modelAddress: txtAddress,
                      modelEmail: txtEmail,
                      modelPhone: txtPhone,
                      modelHSC: txtHSC,
                      modelHscSchool: txtSchoolSSC,
                      modelSscSchool: txtSchoolSSC,
                      modelUniversity: txtUniversity,
                      modelSSC: txtSSC,
                      modelDegree: txtDegree,
                      modelSk1: sk1,
                      modelSk2: sk2,
                      modelSk3: sk3,
                      modelSk4: sk4,
                      modelIntrest: selectedIntrest,
                      modelObjective: txtObjective,
                    );
                    Navigator.pushNamed(context, 'screen2', arguments: m1);
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("Generate",
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 1)),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(colors: [
                        Colors.teal.shade700,
                        Colors.teal.shade900,
                      ])),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Image(
                image: FileImage(
                  File("$path"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
