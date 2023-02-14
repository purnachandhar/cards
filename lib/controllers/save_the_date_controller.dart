import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screen_recorder/screen_recorder.dart';

class SaveTheDateController extends GetxController {
  static SaveTheDateController instance = Get.find();

  RxString brideName = "Rama".obs;
  RxString groomName = "Roja".obs;
  RxString date = "SUNDAY 21 OCT - 2018".obs;
  RxString place = "Hyderabad".obs;
  RxString location = "Laxmi Garder".obs;

  final userdata = GetStorage();

  File? imgFile;

  Random random = new Random();

  @override
  void onInit() async {
    super.onInit();
  }

  GlobalKey<FormState> genKey = GlobalKey<FormState>();

  Future<void> takePicture() async {
    RenderRepaintBoundary boundary =
        genKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(pixelRatio: 10.0);
    final directory = (await getApplicationDocumentsDirectory()).path;
    imgFile = File('$directory/photoss232${random.nextInt(1000)}.png');
    ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    Uint8List pngBytes = byteData!.buffer.asUint8List();

    // File imgFile = File('$directory/photoss.png');
    await imgFile!.writeAsBytes(pngBytes);
    print(imgFile!.path);
    GallerySaver.saveImage(imgFile!.path).then((value) {
      Get.snackbar("Save", "Sucessfully Saved");

    });
  }
}
