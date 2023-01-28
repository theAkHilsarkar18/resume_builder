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
            boxUI("Personal Info",Icon(Icons.person,color: Colors.white,size: 20),),
            boxUI("Contact Info",Icon(Icons.perm_phone_msg,color: Colors.white,size: 20),),
            boxUI("Education",Icon(Icons.workspace_premium,color: Colors.white,size: 20),),

          ],
        ),
      ),
    );
  }

  Widget boxUI(String boxName,Icon iconName) {
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
                style:
                    TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
