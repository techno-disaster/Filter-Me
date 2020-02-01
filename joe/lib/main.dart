import 'dart:core';
import 'package:flutter/material.dart';

import 'package:joe/test.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Jobs",
      initialRoute: '/',
      routes: {
        '/': (context) => MenuDashboardPage(),
      },
    ),
  );
}

