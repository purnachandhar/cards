import 'dart:typed_data';

import 'package:flutter/material.dart';

class GifView extends StatelessWidget {
  Uint8List finalGif;
  GifView(this.finalGif);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.memory(finalGif),
      ),
    );
  }
}
