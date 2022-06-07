import 'package:calci/bottomsheet.dart';
import 'package:flutter/material.dart';

import 'alertdialog.dart';
import 'animatedText.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(
      primaryColor: Colors.green
    ),
    home: AnimatedText(),
  ));
}
