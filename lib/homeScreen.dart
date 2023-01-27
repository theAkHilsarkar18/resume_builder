import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                          fontSize: 12, color: Colors.white, letterSpacing: 2)),
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

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(3)),
                child: ExpansionTile(
                  initiallyExpanded: true,
                  childrenPadding: EdgeInsets.all(20),
                  backgroundColor: Colors.teal.shade900,
                  collapsedBackgroundColor: Colors.teal.shade700,
                  collapsedIconColor: Colors.white,
                  leading:
                      const Icon(Icons.person, size: 20, color: Colors.white),
                  title: const Text(
                    "Personal Info",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15, letterSpacing: 1),
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
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                label: Text(" Name ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                                // prefixIcon: Icon(Icons.person,
                                //     color: Colors.white, size: 18),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 1.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white),
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
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontSize: 16),
                              decoration: InputDecoration(
                                label: Text("Surname",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        letterSpacing: 1)),
                                // prefixIcon: Icon(Icons.person,
                                //     color: Colors.white, size: 18),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white, width: 1.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.white, width: 1.5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.white),
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
            )
          ],
        ),
      ),
    );
  }

  Widget boxUI(String boxName, Icon iconName) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(10),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 2)),
          ],
          gradient: LinearGradient(
            colors: [
              Colors.teal.shade900,
              Colors.teal.shade700,
            ],
          ),
        ),
        child: Row(
          children: [
            iconName,
            SizedBox(width: 10),
            Text("$boxName",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 1, fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
