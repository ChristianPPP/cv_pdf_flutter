import 'dart:async';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';

import 'data.dart';
import 'examples/calendar.dart';
import 'examples/certificate.dart';
import 'examples/document.dart';
import 'examples/invoice.dart';
import 'examples/report.dart';
import 'examples/resume.dart';

const examples = <Example>[
  Example('Poleth', 'document.dart', generateResumeP),
  Example('Christian', 'resume.dart', generateResume),
  Example('Tercera', 'invoice.dart', generateResumeT),
];

typedef LayoutCallbackWithData = Future<Uint8List> Function(
    PdfPageFormat pageFormat, CustomData data);

class Example {
  const Example(this.name, this.file, this.builder, [this.needsData = false]);

  final String name;

  final String file;

  final LayoutCallbackWithData builder;

  final bool needsData;
}
