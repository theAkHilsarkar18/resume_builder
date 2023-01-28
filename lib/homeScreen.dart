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
                  Text("TheAkhilSarkar",
                      style: TextStyle(
                          fontSize: 12, color: Colors.white, letterSpacing: 2)),
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
                      initiallyExpanded: true,
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
                                                color: Colors.white, width: 2),
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
                                                color: Colors.white, width: 2),
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
                            height: 50,
                            width: double.infinity,
                            child: TextFormField(
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
