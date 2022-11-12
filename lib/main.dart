import 'package:flutter/material.dart';

import 'home/sign up/sign up page.dart';

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
        body: sign_up_page(),
      ),
    );
  }
}
