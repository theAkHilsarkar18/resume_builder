import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;
import 'package:resume_builder/modelclass.dart';
import 'package:flutter/material.dart';

class pdfGen extends StatefulWidget {
  const pdfGen({Key? key}) : super(key: key);

  @override
  State<pdfGen> createState() => _pdfGenState();
}

class _pdfGenState extends State<pdfGen> {

  @override
  Widget build(BuildContext context) {
    ModelData m1 = ModalRoute.of(context)!.settings.arguments as ModelData;
    return SafeArea(child: Scaffold(),);
  }
}

void pdfGenerator(ModelData m1) async {

  final pdf = pd.Document();
  pdf.addPage(
    pd.Page(
      margin: pd.EdgeInsets.all(10),
      orientation: pd.PageOrientation.portrait,
      pageFormat: PdfPageFormat.a4,
      build: (context) {
        return pd.Column(
          mainAxisAlignment: pd.MainAxisAlignment.center,
          children: [
            pd.Text(
              "${m1.modelName}",
              style: pd.TextStyle(color: PdfColors.blue, fontSize: 50),
            ),
            pd.Text(
              "${m1.modelSurname}",
              style: pd.TextStyle(color: PdfColors.blue, fontSize: 50),
            ),
          ],
        );
      },
    ),
  );

  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/resume.pdf");
  print(file.path);
  await file.writeAsBytes(await pdf.save());
}
