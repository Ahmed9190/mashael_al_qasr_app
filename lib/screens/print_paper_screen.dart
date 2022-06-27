import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mashael_al_qasr_5/components/print_screen_header.dart';
import 'package:mashael_al_qasr_5/components/rtl_wrapper.dart';

import 'package:mashael_al_qasr_5/components/widget_to_image.dart';
import 'package:mashael_al_qasr_5/utils/constants.dart';
import 'package:mashael_al_qasr_5/utils/print.utils.dart';
import 'package:mashael_al_qasr_5/utils/widget_screenshot.dart';

class PrintPaper extends StatefulWidget {
  final String pageTitle;
  final String title;

  final String fileName;
  final Widget child;
  final bool autoPrint;

  const PrintPaper({
    Key? key,
    required this.pageTitle,
    required this.title,
    required this.fileName,
    required this.child,
    this.autoPrint = false,
  }) : super(key: key);

  @override
  State<PrintPaper> createState() => _PrintPaperState();
}

class _PrintPaperState extends State<PrintPaper> {
  bool isCaptured = false;
  Uint8List? bytes;
  GlobalKey? key;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      if (!isCaptured) {
        await capture();
        if (widget.autoPrint) printPDF(bytes!, widget.fileName);
      }
    });
  }

  Future<void> capture() async {
    isCaptured = true;
    bytes = await widgetScreenshotCapture(key);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          widget.pageTitle,
          style: const TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        elevation: 0,
        shadowColor: const Color(0x003d3d3d),
        actions: [
          if (isCaptured)
            IconButton(
              icon: const Icon(Icons.print_outlined),
              color: Colors.black,
              onPressed: () => printPDF(bytes!, widget.fileName),
            )
        ],
      ),
      body: RtlWrapper(
        child: SafeArea(
          child: Container(
            color: Colors.grey[50],
            child: ListView(
              children: [
                WidgetToImage(
                  builder: (key) {
                    this.key = key;
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          PrintScreenHeader(
                            title: widget.title,
                            companyName: CompnayData.nameAr,
                            vatNo: CompnayData.vatNo,
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          widget.child,
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
