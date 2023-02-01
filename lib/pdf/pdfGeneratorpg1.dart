import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pd;

void pdfGenerator() async {
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
              "Hii",
              style: pd.TextStyle(color: PdfColors.blue, fontSize: 50),
            ),
            pd.Text(
              "Hii",
              style: pd.TextStyle(color: PdfColors.blue, fontSize: 50),
            ),
          ],
        );
      },
    ),
  );

  Directory? directory = await getExternalStorageDirectory();
  var file = File("${directory!.path}/123.pdf");
  print(file.path);
  await file.writeAsBytes(await pdf.save());
}
