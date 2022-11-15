import 'package:flutter/material.dart';
import 'package:interviewproject/app/sign%20up/continue%20with%20phone.dart';


void main() {
  runApp(const main_page());
}

class main_page extends StatelessWidget {
  const main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: continue_with_phone(),
      ),
    );
  }
}
