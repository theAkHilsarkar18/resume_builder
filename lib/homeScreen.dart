import 'package:flutter/material.dart';
import 'package:resume_builder/modelclass.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //Declaration section for skills
  bool skill1 = true;
  bool skill2 = true;
  bool skill3 = true;
  bool skill4 = true;

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
  TextEditingController ssc = TextEditingController();
  TextEditingController hsc = TextEditingController();
  TextEditingController degree = TextEditingController();
  TextEditingController objective = TextEditingController();

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
                                    width: double.infinity,
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
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Colors.white, width: 1.5)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
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
                                  Row(
                                    children: [
                                      Radio(
                                        activeColor: Colors.white,
                                        value: "Other",
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
                                        "Other",
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
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: double.infinity,
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
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: double.infinity,
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
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 35,
                                    width: double.infinity,
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
                                        color: Colors.white, width: 2),
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
                              Row(
                                children: [
                                  Checkbox(
                                    side: BorderSide(
                                        color: Colors.white, width: 2),
                                    checkColor: Colors.black,
                                    activeColor: Colors.white,
                                    value: skill4,
                                    onChanged: (value) {
                                      setState(() {
                                        skill4 = value!;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Java",
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
              SizedBox(height: 100,),
              InkWell(
                onTap: () {
                  setState(() {
                    // ModelData m1 = ModelData(modelName: name.text);
                    // Navigator.pushNamed(context,'screen2',arguments: m1);

                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Text("Generate",style: TextStyle(color: Colors.white,fontSize: 18,letterSpacing: 1)),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    gradient: LinearGradient(
                      colors: [
                        Colors.teal.shade700,
                        Colors.teal.shade900,
                      ]
                    )
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
