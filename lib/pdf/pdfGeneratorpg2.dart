import 'dart:io';
import 'dart:ui';
import 'dart:ui';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart' as mt;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:resume_builder/modelclass.dart';
import 'package:flutter/material.dart';

Future<void> pdfGeneratorpg2() async {
  final pdf = pd.Document();
  pdf.addPage(
    pd.Page(
      margin: pd.EdgeInsets.all(10),
      pageFormat: PdfPageFormat.a4,
      orientation: pd.PageOrientation.portrait,
      build: (context) {
        return pd.Stack(
          children: [
            pd.Column(
              children: [
                pd.Container(
                  height: 210,
                  width: double.infinity,
                  color: PdfColors.indigo200,
                  child: pd.Column(
                    crossAxisAlignment: pd.CrossAxisAlignment.end,
                    children: [
                      pd.SizedBox(
                        height: 10,
                      ),
                      pd.Padding(
                        padding: pd.EdgeInsets.all(8.0),
                        child: pd.Text("Akhil Sodvadiya",
                            style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 2,
                                fontSize: 25,
                                fontWeight: pd.FontWeight.bold)),
                      ),
                      pd.Padding(
                        padding: const pd.EdgeInsets.only(right: 8),
                        child: pd.Text("Phone",
                            style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: pd.FontWeight.bold)),
                      ),
                      pd.Padding(
                        padding: const pd.EdgeInsets.only(right: 8),
                        child: pd.Text("9825486060",
                            style: pd.TextStyle(
                              color: PdfColors.white,
                              letterSpacing: 2,
                              fontSize: 12,
                            )),
                      ),
                      pd.SizedBox(
                        height: 5,
                      ),
                      pd.Padding(
                        padding: const pd.EdgeInsets.only(right: 8),
                        child: pd.Text("Email",
                            style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: pd.FontWeight.bold)),
                      ),
                      pd.Padding(
                        padding: const pd.EdgeInsets.only(right: 8),
                        child: pd.Text("akhilsodvadiya@gmail.com",
                            style: pd.TextStyle(
                              color: PdfColors.white,
                              letterSpacing: 2,
                              fontSize: 11,
                            )),
                      ),
                      pd.SizedBox(
                        height: 5,
                      ),
                      pd.Padding(
                        padding: const pd.EdgeInsets.only(right: 8),
                        child: pd.Text("Address",
                            style: pd.TextStyle(
                                color: PdfColors.white,
                                letterSpacing: 2,
                                fontSize: 14,
                                fontWeight: pd.FontWeight.bold)),
                      ),
                      pd.Padding(
                        padding: const pd.EdgeInsets.only(right: 8),
                        child: pd.Text(
                            "A-107,Khodiyar Chember,\nAnjani Nagar Society,\nPunagam,Surat-395010",
                            style: pd.TextStyle(
                              color: PdfColors.white,
                              letterSpacing: 2,
                              fontSize: 11,
                            )),
                      ),
                    ],
                  ),
                ),
                pd.SizedBox(
                  height: 3,
                ),
                pd.Container(
                  height: 390,
                  width: double.infinity,
                  child: pd.Row(
                    children: [
                      pd.Container(
                        height: 400,
                        width: 150,
                        color: PdfColors.indigo50,
                        child: pd.Column(
                          mainAxisAlignment: pd.MainAxisAlignment.end,
                          children: [
                            pd.SizedBox(
                              height: 3,
                            ),
                            pd.Text(
                              "Personal",
                              style: pd.TextStyle(
                                  color: PdfColors.indigo900,
                                  fontWeight: pd.FontWeight.bold,
                                  letterSpacing: 2,
                                  fontSize: 20),
                            ),
                            pd.Text(
                              "Qualities",
                              style: pd.TextStyle(
                                  color: PdfColors.indigo900,
                                  fontWeight: pd.FontWeight.bold,
                                  letterSpacing: 2,
                                  fontSize: 20),
                            ),
                            pd.SizedBox(
                              height: 3,
                            ),
                            pd.Container(
                              width: 130,
                              decoration: pd.BoxDecoration(
                                  color: PdfColors.indigo900,
                                  border: pd.Border(
                                      bottom: pd.BorderSide(
                                          color: PdfColors.indigo900,
                                          width: 2))),
                            ),
                            pd.SizedBox(
                              height: 5,
                            ),
                            pd.Icon(
                                Icons.arrow_downward_outlined as pd.IconData,
                                color: PdfColors.indigo900),
                            pd.SizedBox(
                              height: 10,
                            ),
                            pd.Text(
                              "iOS",
                              style: pd.TextStyle(
                                  color: PdfColors.indigo900,
                                  fontWeight: pd.FontWeight.bold,
                                  letterSpacing: 2,
                                  fontSize: 17),
                            ),
                            pd.Text(
                              "Developer",
                              style: pd.TextStyle(
                                  color: PdfColors.indigo900,
                                  fontWeight: pd.FontWeight.bold,
                                  letterSpacing: 2,
                                  fontSize: 17),
                            ),
                            pd.SizedBox(
                              height: 3,
                            ),
                            pd.Container(
                              width: 130,
                              decoration: pd.BoxDecoration(
                                  color: PdfColors.indigo900,
                                  border: pd.Border(
                                      bottom: pd.BorderSide(
                                          color: PdfColors.indigo900,
                                          width: 2))),
                            ),
                            pd.SizedBox(
                              height: 5,
                            ),
                            pd.Icon(
                                Icons.arrow_downward_outlined as pd.IconData,
                                color: PdfColors.indigo900),
                            pd.SizedBox(
                              height: 10,
                            ),
                            pd.Text(
                              "Skills",
                              style: pd.TextStyle(
                                  color: PdfColors.indigo900,
                                  fontWeight: pd.FontWeight.bold,
                                  letterSpacing: 2,
                                  fontSize: 15),
                            ),
                            pd.SizedBox(
                              height: 3,
                            ),
                            pd.Container(
                              width: 80,
                              decoration: pd.BoxDecoration(
                                  color: PdfColors.indigo900,
                                  border: pd.Border(
                                      bottom: pd.BorderSide(
                                          color: PdfColors.indigo900,
                                          width: 2))),
                            ),
                            pd.SizedBox(
                              height: 10,
                            ),
                            pd.Text(
                              "C",
                              style: pd.TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 2,
                                  color: PdfColors.indigo900),
                            ),
                            pd.Text(
                              "C++",
                              style: pd.TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 2,
                                  color: PdfColors.indigo900),
                            ),
                            pd.Text(
                              "Dart",
                              style: pd.TextStyle(
                                  fontSize: 12,
                                  letterSpacing: 2,
                                  color: PdfColors.indigo900),
                            ),
                            pd.SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      pd.SizedBox(
                        width: 2,
                      ),
                      pd.Expanded(
                        child: pd.Container(
                          height: 400,
                          width: 150,
                          color: PdfColors.indigo900,
                          child: pd.Column(
                            mainAxisAlignment: pd.MainAxisAlignment.end,
                            children: [
                              pd.SizedBox(
                                height: 3,
                              ),
                              pd.Text(
                                "Education",
                                style: pd.TextStyle(
                                    color: PdfColors.indigo900,
                                    fontWeight: pd.FontWeight.bold,
                                    letterSpacing: 2,
                                    fontSize: 20),
                              ),
                              pd.SizedBox(
                                height: 3,
                              ),
                              pd.Container(
                                width: 130,
                                decoration: pd.BoxDecoration(
                                    color: PdfColors.indigo900,
                                    border: pd.Border(
                                        bottom: pd.BorderSide(
                                            color: PdfColors.indigo900,
                                            width: 2))),
                              ),
                              pd.Icon(
                                  Icons.arrow_downward_outlined as pd.IconData,
                                  color: PdfColors.indigo900),
                              pd.SizedBox(
                                height: 20,
                              ),
                              pd.SizedBox(
                                height: 3,
                              ),
                              pd.Text(
                                "SSC",
                                style: pd.TextStyle(
                                    color: PdfColors.indigo900,
                                    fontWeight: pd.FontWeight.bold,
                                    letterSpacing: 2,
                                    fontSize: 16),
                              ),
                              pd.SizedBox(
                                height: 3,
                              ),
                              pd.Container(
                                width: 80,
                                decoration: pd.BoxDecoration(
                                    color: PdfColors.indigo900,
                                    border: pd.Border(
                                        bottom: pd.BorderSide(
                                            color: PdfColors.indigo900,
                                            width: 2))),
                              ),
                              pd.Icon(
                                  Icons.arrow_downward_outlined as pd.IconData,
                                  color: PdfColors.indigo900,
                                  size: 15),
                              pd.Text(
                                "Rajkot Gurukul",
                                style: pd.TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: PdfColors.indigo900),
                              ),
                              //
                              //Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                              //
                              pd.SizedBox(
                                height: 20,
                              ),
                              //
                              pd.Text(
                                "HSC",
                                style: pd.TextStyle(
                                    color: PdfColors.indigo900,
                                    fontWeight: pd.FontWeight.bold,
                                    letterSpacing: 2,
                                    fontSize: 16),
                              ),
                              pd.SizedBox(
                                height: 3,
                              ),
                              pd.Container(
                                width: 80,
                                decoration: pd.BoxDecoration(
                                    color: PdfColors.indigo900,
                                    border: pd.Border(
                                        bottom: pd.BorderSide(
                                            color: PdfColors.indigo900,
                                            width: 2))),
                              ),
                              pd.Icon(
                                  Icons.arrow_downward_outlined as pd.IconData,
                                  color: PdfColors.indigo900,
                                  size: 15),
                              pd.Text(
                                "Rajkot Gurukul",
                                style: pd.TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: PdfColors.indigo900),
                              ),
                              //
                              //Icon(Icons.arrow_downward_outlined,color: Colors.indigo.shade900),
                              pd.SizedBox(
                                height: 20,
                              ),
                              //
                              pd.Text(
                                "Degree",
                                style: pd.TextStyle(
                                    color: PdfColors.indigo900,
                                    fontWeight: pd.FontWeight.bold,
                                    letterSpacing: 2,
                                    fontSize: 16),
                              ),
                              pd.SizedBox(
                                height: 3,
                              ),
                              pd.Container(
                                width: 80,
                                decoration: pd.BoxDecoration(
                                    color: PdfColors.indigo900,
                                    border: pd.Border(
                                        bottom: pd.BorderSide(
                                            color: PdfColors.indigo900,
                                            width: 2))),
                              ),
                              pd.Icon(
                                  Icons.arrow_downward_outlined as pd.IconData,
                                  color: PdfColors.indigo900,
                                  size: 15),
                              pd.Text(
                                "Swarnim Univesity",
                                style: pd.TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: PdfColors.indigo900),
                              ),
                              pd.Text(
                                "BCA",
                                style: pd.TextStyle(
                                    fontSize: 12,
                                    letterSpacing: 2,
                                    color: PdfColors.indigo900),
                              ),
                              pd.SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                pd.SizedBox(
                  height: 3,
                ),
                pd.Expanded(
                  child: pd.Container(
                    height: 150,
                    width: double.infinity,
                    color: PdfColors.indigo200,
                    child: pd.Column(
                      children: [
                        pd.SizedBox(
                          height: 10,
                        ),
                        pd.Text("Objective",
                            style: pd.TextStyle(
                                color: PdfColors.white,
                                fontWeight: pd.FontWeight.bold,
                                letterSpacing: 2,
                                fontSize: 18)),
                        pd.Icon(
                          Icons.arrow_downward_outlined as pd.IconData,
                          size: 15,
                          color: PdfColors.white,
                        ),
                        pd.SizedBox(
                          height: 3,
                        ),
                        pd.Container(
                          margin: pd.EdgeInsets.only(right: 10, left: 10),
                          height: 100,
                          width: 400,
                          decoration: pd.BoxDecoration(
                            border:
                                pd.Border.all(color: PdfColors.white, width: 2),
                            borderRadius: pd.BorderRadius.circular(5),
                          ),
                          child: pd.Column(
                            mainAxisAlignment: pd.MainAxisAlignment.center,
                            children: [
                              pd.Text(
                                  "To obtain employment with a \ncompany that offers a positive \natmosphere to learn and \nimplement new skills !",
                                  style: pd.TextStyle(
                                      letterSpacing: 2,
                                      color: PdfColors.white)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // pd.Transform.translate(
            //   offset: PdfPoint(20, 120),
            //   child: pd.Container(
            //     height: 110,
            //     width: 110,
            //     color: PdfColors.white,
            //     child: pd.Image(
            //       "assets/images/person.png" as pd.ImageProvider,
            //     ),
            //   ),
            // ),
          ],
        );
      },
    ),
  );


  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/a.pdf");
  print("-------------------------------------------------------------------------------------------------------------------------------------");
  print(file.path);
  print("-------------------------------------------------------------------------------------------------------------------------------------");
  await file.writeAsBytes(await pdf.save());

}
