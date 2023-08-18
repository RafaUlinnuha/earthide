import 'package:earthide/pages/choose_location.dart';
import 'package:earthide/pages/home.dart';
import 'package:earthide/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/':  (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
