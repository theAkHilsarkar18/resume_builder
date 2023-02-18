import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:resume_builder/modelclass.dart';
import 'package:flutter/material.dart';


void pdfGenerator(ModelData m1) async {

  var img = pd.MemoryImage(File("${m1.modelPath}").readAsBytesSync());
  final pdf = pd.Document();
  pdf.addPage(
    pd.Page(
      margin: const pd.EdgeInsets.all(10),
      orientation: pd.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pd.Row(
          children: [
            pd.Container(
              height: double.infinity,
              width: 180,
              decoration: pd.BoxDecoration(
                color: PdfColors.teal,
              ),
              child: pd.Column(
                children: [
                  pd.SizedBox(
                    height: 10,
                  ),
                  pd.Container(
                    height: 100,
                    width: 80,
                    decoration: pd.BoxDecoration(
                      shape: pd.BoxShape.circle,
                    ),
                    child: pd.Image(img),
                  ),
                  pd.SizedBox(
                    height: 20,
                  ),
                  pd.Align(
                    alignment: pd.Alignment.centerRight,
                    child: pd.Container(
                      alignment: pd.Alignment.centerLeft,
                      height: 35,
                      width: 170,
                      decoration: pd.BoxDecoration(
                        border: pd.Border(
                          bottom: pd.BorderSide(color: PdfColors.white, width: 1.5),
                        ),
                      ),
                      child: pd.Text("Contact",
                          style: pd.TextStyle(
                              color: PdfColors.white,
                              fontWeight: pd.FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 17)),
                    ),
                  ),
                  pd.SizedBox(
                    height: 10,
                  ),
                  pd.Align(
                    alignment: pd.Alignment.centerRight,
                    child: pd.Container(
                      alignment: pd.Alignment.centerLeft,
                      height: 110,
                      width: 170,
                      child: pd.Column(
                        mainAxisAlignment: pd.MainAxisAlignment.start,
                        children:  [
                          pd.Align(
                            alignment: pd.Alignment.centerLeft,
                            child: pd.Text(
                              "Phone",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pd.FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          pd.SizedBox(height: 4,),
                          pd.Align(
                            alignment: pd.Alignment.centerLeft,
                            child: pd.Text(
                              "${m1.modelPhone}",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 1,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          //
                          pd.SizedBox(height: 5,),
                          //
                          pd.Align(
                            alignment: pd.Alignment.centerLeft,
                            child: pd.Text(
                              "Email",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pd.FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          pd.SizedBox(height: 5,),
                          pd.Align(
                            alignment: pd.Alignment.centerLeft,
                            child: pd.Text(
                              "${m1.modelEmail}",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 1,
                                fontSize: 9,
                              ),
                            ),
                          ),
                          pd.SizedBox(height: 9),
                          pd.Align(
                            alignment: pd.Alignment.centerLeft,
                            child: pd.Text(
                              "Address",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pd.FontWeight.bold,
                                letterSpacing: 1,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          pd.SizedBox(height: 5,),
                          pd.Align(
                            alignment: pd.Alignment.centerLeft,
                            child: pd.Text(
                              "${m1.modelAddress}",
                              style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 1,
                                fontSize: 9,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  pd.SizedBox(
                    height: 20,
                  ),
                  //
                ],
              ),
            ),
            pd.Spacer(),
            pd.Padding(
              padding:  pd.EdgeInsets.all(10),
              child: pd.Column(

                children: [
                  pd.Align(
                    alignment: pd.Alignment.center,
                    child: pd.Center(
                      child: pd.Container(
                        alignment: pd.Alignment.center,
                        height: 50,
                        width: 200,
                        decoration: pd.BoxDecoration(
                          border: pd.Border.all(color: PdfColors.teal,width: 1.5),
                        ),
                        child: pd.Text("${m1.modelName} ${m1.modelSurname}",style: pd.TextStyle(fontSize: 18,letterSpacing: 2,fontWeight: pd.FontWeight.bold)),
                      ),
                    ),
                  ),
                  pd.SizedBox(height: 3,),
                  pd.Text("Flutter Developer",style: pd.TextStyle(letterSpacing: 2,fontSize: 12),),
                  pd.SizedBox(height: 20),
                  pd.Container(decoration: pd.BoxDecoration(border: pd.Border(bottom: pd.BorderSide(color: PdfColors.teal,width: 1.5,),),),child: pd.Text("Skills",style: pd.TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: pd.FontWeight.bold),)),
                  pd.SizedBox(height: 10,),
                  pd.Row(
                    children: [
                      pd.Container(decoration: pd.BoxDecoration(border: pd.Border.all(color: PdfColors.teal,width: 1.5),),child: pd.Text(" C ",style: pd.TextStyle(color: PdfColors.black,fontSize: 13,),),),
                      pd.SizedBox(width: 10,),
                      pd.Container(decoration: pd.BoxDecoration(border: pd.Border.all(color: PdfColors.teal,width: 1.5),),child: pd.Text(" C++ ",style: pd.TextStyle(color: PdfColors.black,fontSize: 13,),),),
                      pd.SizedBox(width: 10,),
                      pd.Container(decoration: pd.BoxDecoration(border: pd.Border.all(color: PdfColors.teal,width: 1.5),),child: pd.Text(" Dart ",style: pd.TextStyle(color: PdfColors.black,fontSize: 13,),),),
                    ],
                  ),
                  pd.SizedBox(height: 20,),
                  // Education
                  pd.Container(
                    alignment: pd.Alignment.center,
                    decoration: pd.BoxDecoration(
                      border: pd.Border(
                        bottom: pd.BorderSide(color: PdfColors.teal, width: 1.5),
                      ),
                    ),
                    child: pd.Text("Education",
                      style: pd.TextStyle(
                        color: PdfColors.black,
                        fontWeight: pd.FontWeight.bold,
                        letterSpacing: 1,
                        fontSize: 15,),),
                  ),
                  pd.SizedBox(height: 10,),
                  pd.Container(
                    alignment: pd.Alignment.center,
                    child: pd.Column(
                      mainAxisAlignment: pd.MainAxisAlignment.start,
                      children: [
                        pd.SizedBox(height: 8,),
                        pd.Align(
                          alignment: pd.Alignment.centerLeft,
                          child: pd.Text(
                            "SSC",
                            style: pd.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pd.FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        pd.SizedBox(height: 2,),
                        pd.Align(
                          alignment: pd.Alignment.centerLeft,
                          child: pd.Text(
                            "${m1.modelSscSchool} - ${m1.modelSSC}%",
                            style: pd.TextStyle(
                              color: PdfColors.black,
                              letterSpacing: 1,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        //
                        pd.SizedBox(height: 8,),
                        pd.Align(
                          alignment: pd.Alignment.centerLeft,
                          child: pd.Text(
                            "HSC",
                            style: pd.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pd.FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        pd.SizedBox(height: 2,),
                        pd.Align(
                          alignment: pd.Alignment.centerLeft,
                          child: pd.Text(
                            "${m1.modelHscSchool} - ${m1.modelHSC}%",
                            style: pd.TextStyle(
                              color: PdfColors.black,
                              letterSpacing: 1,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        //
                        pd.SizedBox(height: 8,),
                        pd.Align(
                          alignment: pd.Alignment.centerLeft,
                          child: pd.Text(
                            "Degree",
                            style: pd.TextStyle(
                              color: PdfColors.black,
                              fontWeight: pd.FontWeight.bold,
                              letterSpacing: 1,
                              fontSize: 13,
                            ),
                          ),
                        ),
                        pd.SizedBox(height: 2,),
                        pd.Align(
                          alignment: pd.Alignment.centerLeft,
                          child: pd.Text(
                            "${m1.modelUniversity} - ${m1.modelDegree}",
                            style: pd.TextStyle(
                              color: PdfColors.black,
                              letterSpacing: 1,
                              fontSize: 11,
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  pd.SizedBox(height: 20),
                  pd.Container(decoration: pd.BoxDecoration(border: pd.Border(bottom: pd.BorderSide(color: PdfColors.teal,width: 1.5,),),),child: pd.Text("Objective",style: pd.TextStyle(fontSize: 15,letterSpacing: 1,fontWeight: pd.FontWeight.bold),)),
                  pd.SizedBox(height: 10,),
                  pd.Text("${m1.modelObjective}",style: pd.TextStyle(fontSize: 9,letterSpacing: 1),),
                ],
              ),
            ),
            pd.Spacer(),

          ],
        );
      },
    ),
  );

  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/akhil.pdf");
  print("-------------------------------------------------------------------------------------------------------------------------------------");
  print(file.path);
  print("-------------------------------------------------------------------------------------------------------------------------------------");

  await file.writeAsBytes(await pdf.save());
}
