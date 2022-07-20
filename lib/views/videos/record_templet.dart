import 'package:card_poc/constains/controllers.dart';
import 'package:card_poc/controllers/templet_record_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:screen_recorder/screen_recorder.dart';

class RecordVideoTemplet extends StatelessWidget {
  Widget stdVideoWidgets;

  RecordVideoTemplet(this.stdVideoWidgets);

  @override
  Widget build(BuildContext context) {
    Get.put(TempletRecodingController());
    return Scaffold(
      body: Container(
        color: Colors.transparent,
        child: Center(
          child: ScreenRecorder(
              height: 700,
              width: 700,
              controller: templetRecodingController.controller,
              background: Colors.transparent,
              child: Center(child: stdVideoWidgets)),
        ),
      ),
    );
  }
}
