import 'package:class_practice/screens/home.dart';
import 'package:class_practice/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello world',
      //home: Home(),
      home: LoginPage(),
    ),
  );
}
