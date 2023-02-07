import 'package:flutter/material.dart';

class Template2 extends StatefulWidget {
  const Template2({Key? key}) : super(key: key);

  @override
  State<Template2> createState() => _Template2State();
}

class _Template2State extends State<Template2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 210,
                  width: double.infinity,
                  color: Colors.indigo.shade200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Akhil Sodvadiya",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 25,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("Phone",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 14,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("9825486060",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 12,)),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("Email",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 14,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("akhilsodvadiya@gmail.com",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 11,)),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("Address",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 14,fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text("A-107,Khodiyar Chember,\nAnjani Nagar Society,\nPunagam,Surat-395010",style: TextStyle(color: Colors.white,letterSpacing: 2,fontSize: 11,)),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Container(
                  height: 390,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        height: 400,
                        width: 150,
                        color: Colors.indigo.shade50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 3,),
                            Text("Personal",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 20),),
                            Text("Qualities",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 20),),
                            SizedBox(height: 3,),
                            Container(width: 130,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                            SizedBox(height: 5,),
                            Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                            SizedBox(height: 10,),
                            Text("iOS",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 17),),
                            Text("Developer",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 17),),
                            SizedBox(height: 3,),
                            Container(width: 130,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                            SizedBox(height: 5,),
                            Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                            SizedBox(height: 10,),
                            Text("Skills",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 15),),
                            SizedBox(height: 3,),
                            Container(width: 80,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                            SizedBox(height: 10,),
                            Text("C",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                            Text("C++",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                            Text("Dart",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                            SizedBox(height: 10,),
                          ],
                        ),
                      ),
                      SizedBox(width: 2,),
                      Expanded(
                        child: Container(
                          height: 400,
                          width: 150,
                          color: Colors.indigo.shade50,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(height: 3,),
                              Text("Education",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 20),),
                              SizedBox(height: 3,),
                              Container(width: 130,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                             //
                              Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                              SizedBox(height: 20,),
                              SizedBox(height: 3,),
                              Text("SSC",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 16),),
                              SizedBox(height: 3,),
                              Container(width: 80,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                              Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900,size: 15),
                              Text("Rajkot Gurukul",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                              //
                              //Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                              //
                              SizedBox(height: 20,),
                              //
                              Text("HSC",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 16),),
                              SizedBox(height: 3,),
                              Container(width: 80,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                              Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900,size: 15),
                              Text("Rajkot Gurukul",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                              //
                              //Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                              SizedBox(height: 20,),
                              //
                              Text("Degree",style:TextStyle(color: Colors.indigo.shade900,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 16),),
                              SizedBox(height: 3,),
                              Container(width: 80,decoration: BoxDecoration(color: Colors.indigo.shade900,border: Border(bottom: BorderSide(color: Colors.indigo.shade900,width: 2))),),
                              Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900,size: 15),
                              Text("Swarnim Univesity",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                              Text("BCA",style: TextStyle(fontSize: 12,letterSpacing: 2,color: Colors.indigo.shade900),),
                              SizedBox(height: 20,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3,),
                Expanded(
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.indigo.shade200,
                    child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Text("Objective",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2,fontSize: 18)),
                        Icon(Icons.arrow_downward_outlined,size: 15,color: Colors.white,),
                        SizedBox(height: 3,),
                        Container(
                          margin: EdgeInsets.only(right: 10,left: 10),
                          height: 100,
                          width: 400,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("To obtain employment with a \ncompany that offers a positive \natmosphere to learn and \nimplement new skills !",style: TextStyle(letterSpacing: 2,color: Colors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Transform.translate(
              offset: Offset(20,120),
              child: Container(
                height: 110,
                width: 110,
                color: Colors.white,
                child: Image.asset("assets/images/person.png",),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
