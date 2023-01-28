import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool skill1 = true;
  bool skill2 = true;
  bool skill3 = true;
  bool skill4 = true;

  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
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
                height: 120,
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
                    Text("TheAkhilSarkar",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            letterSpacing: 2)),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              //
              //
              SizedBox(
                height: 3,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(3),
                            topRight: Radius.circular(3)),
                        child: ExpansionTile(
                          initiallyExpanded: false,
                          childrenPadding: EdgeInsets.all(20),
                          backgroundColor: Colors.teal.shade900,
                          collapsedBackgroundColor: Colors.teal.shade700,
                          collapsedIconColor: Colors.white,
                          leading: const Icon(Icons.person,
                              size: 20, color: Colors.white),
                          title: const Text(
                            "Personal Info",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 1),
                          ),
                          iconColor: Colors.white,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    child: TextFormField(
                                      controller: name,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1,
                                          fontSize: 16),
                                      decoration: InputDecoration(
                                        label: Text(
                                          " Name ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              letterSpacing: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    child: TextFormField(
                                      controller: surname,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1,
                                          fontSize: 16),
                                      decoration: InputDecoration(
                                        label: Text(
                                          "Surname",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              letterSpacing: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 140,
                                  child: TextFormField(
                                    controller: city,
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      label: Text(
                                        " City ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 140,
                                  child: TextFormField(
                                    controller: state,
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      label: Text(
                                        " State ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 140,
                                  child: TextFormField(
                                    controller: country,
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      label: Text(
                                        " Country ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 40,
                              width: double.infinity,
                              child: TextFormField(
                                controller: email,
                                keyboardType: TextInputType.emailAddress,
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontSize: 16),
                                decoration: InputDecoration(
                                  label: Text(
                                    " Email ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 40,
                              width: double.infinity,
                              child: TextFormField(
                                controller: phone,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontSize: 16),
                                decoration: InputDecoration(
                                  label: Text(
                                    " Phone ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 1),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(3),
                            topRight: Radius.circular(3)),
                        child: ExpansionTile(
                          initiallyExpanded: false,
                          childrenPadding: EdgeInsets.all(20),
                          backgroundColor: Colors.teal.shade900,
                          collapsedBackgroundColor: Colors.teal.shade700,
                          collapsedIconColor: Colors.white,
                          leading: const Icon(Icons.school,
                              size: 20, color: Colors.white),
                          title: const Text(
                            "Education",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 1),
                          ),
                          iconColor: Colors.white,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 40,
                                  width: 110,
                                  child: TextFormField(
                                    controller: ssc,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      label: Text(
                                        "    SSC % ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 110,
                                  child: TextFormField(
                                    controller: hsc,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      label: Text(
                                        "    HSC % ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 110,
                                  child: TextFormField(
                                    controller: degree,
                                    keyboardType: TextInputType.name,
                                    style: TextStyle(
                                        color: Colors.white,
                                        letterSpacing: 1,
                                        fontSize: 16),
                                    decoration: InputDecoration(
                                      label: Text(
                                        "   Degree ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            letterSpacing: 1),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 2),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1),
                                        borderRadius: BorderRadius.circular(10),
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(3),
                            topRight: Radius.circular(3)),
                        child: ExpansionTile(
                          initiallyExpanded: false,
                          childrenPadding: EdgeInsets.all(20),
                          backgroundColor: Colors.teal.shade900,
                          collapsedBackgroundColor: Colors.teal.shade700,
                          collapsedIconColor: Colors.white,
                          leading: const Icon(Icons.workspace_premium,
                              size: 20, color: Colors.white),
                          title: const Text(
                            "Skills",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 1),
                          ),
                          iconColor: Colors.white,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white,width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("C",style: TextStyle(color: Colors.white,fontSize: 18),),
                                      SizedBox(width: 5,),
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white,width: 2),
                                        value: skill1,
                                        onChanged: (value) {
                                          setState(() {
                                            skill1 = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white,width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("C++",style: TextStyle(color: Colors.white,fontSize: 18),),
                                      SizedBox(width: 5,),
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white,width: 2),
                                        value: skill2,
                                        onChanged: (value) {
                                          setState(() {
                                            skill2 = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white,width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Dart",style: TextStyle(color: Colors.white,fontSize: 18),),
                                      SizedBox(width: 5,),
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white,width: 2),
                                        value: skill3,
                                        onChanged: (value) {
                                          setState(() {
                                            skill3 = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.white,width: 1),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Java",style: TextStyle(color: Colors.white,fontSize: 18),),
                                      SizedBox(width: 5,),
                                      Checkbox(
                                        activeColor: Colors.white,
                                        checkColor: Colors.black,
                                        side: BorderSide(color: Colors.white,width: 2),
                                        value: skill4,
                                        onChanged: (value) {
                                          setState(() {
                                            skill4 = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topLeft: Radius.circular(3),
                            topRight: Radius.circular(3)),
                        child: ExpansionTile(
                          initiallyExpanded: false,
                          childrenPadding: EdgeInsets.all(20),
                          backgroundColor: Colors.teal.shade900,
                          collapsedBackgroundColor: Colors.teal.shade700,
                          collapsedIconColor: Colors.white,
                          leading: const Icon(Icons.offline_bolt_outlined,
                              size: 20, color: Colors.white),
                          title: const Text(
                            "Objective",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 1),
                          ),
                          iconColor: Colors.white,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Expanded(
                                  child: Container(
                                    height: 40,
                                    width: 100,
                                    child: TextFormField(
                                      controller: objective,
                                      keyboardType: TextInputType.name,
                                      style: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 1,
                                          fontSize: 16),
                                      decoration: InputDecoration(
                                        label: Text(
                                          " Objective ",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              letterSpacing: 1),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 2),
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white, width: 1),
                                          borderRadius:
                                          BorderRadius.circular(10),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
