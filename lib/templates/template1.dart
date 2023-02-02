import 'package:flutter/material.dart';
import 'package:resume_builder/modelclass.dart';

class Template1 extends StatefulWidget {
  const Template1({Key? key}) : super(key: key);

  @override
  State<Template1> createState() => _Template1State();
}

class _Template1State extends State<Template1> {
  @override
  Widget build(BuildContext context) {
    //ModelData t1 = ModalRoute.of(context)!.settings.arguments as ModelData;
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              height: double.infinity,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.teal.shade700,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/person.png"),
                    backgroundColor: Colors.teal.shade400,
                    radius: 45,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 25,
                      width: 110,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white, width: 1.5),
                        ),
                      ),
                      child: Text("Contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 11)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      width: 110,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Phone",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 8,
                              ),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "9825486060",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 6,
                              ),
                            ),
                          ),
                          //
                          SizedBox(height: 5,),
                          //
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 8,
                              ),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "akhilsodvadiya@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 6,
                              ),
                            ),
                          ),
                          //
                          SizedBox(height: 5,),
                          //
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Education",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 8,
                              ),
                            ),
                          ),
                          SizedBox(height: 2,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "A-107,Khodiyar chembers, Anjaninagar society , punagam , surat - 395010",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontSize: 6,
                              ),
                            ),
                          ),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //


                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(

                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.teal.shade800,width: 1.5),
                        ),
                        child: Text("Akhil Sodvadiya",style: TextStyle(fontSize: 18,letterSpacing: 2,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  SizedBox(height: 3,),
                  Text("Flutter Developer",style: TextStyle(letterSpacing: 2,fontSize: 12),),
                  SizedBox(height: 20),
                  Container(decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.teal.shade800,width: 1.5,),),),child: Text("Skills",style: TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Container(decoration: BoxDecoration(border: Border.all(color: Colors.teal.shade800,width: 1.5),),child: Text(" C ",style: TextStyle(color: Colors.black,fontSize: 13,),),),
                      SizedBox(width: 10,),
                      Container(decoration: BoxDecoration(border: Border.all(color: Colors.teal.shade800,width: 1.5),),child: Text(" C++ ",style: TextStyle(color: Colors.black,fontSize: 13,),),),
                      SizedBox(width: 10,),
                      Container(decoration: BoxDecoration(border: Border.all(color: Colors.teal.shade800,width: 1.5),),child: Text(" Dart ",style: TextStyle(color: Colors.black,fontSize: 13,),),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  // Education
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.teal.shade800, width: 1.5),
                      ),
                    ),
                    child: Text("Education",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15,),),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: 8,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "SSC",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rajkot Gurukul - 80%",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        //
                        SizedBox(height: 8,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "HSC",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Rajkot Gurukul - 70%",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        //
                        SizedBox(height: 8,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Degree",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        SizedBox(height: 2,),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Swarnim University - BCA",
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1,
                              fontSize: 11,
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
