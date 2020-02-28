import 'package:flutter/material.dart';
import 'package:hello_world/pages/login.page.dart';

void main() => runApp(AppRoot());

// UI responsible
class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage()
    );
  }
}