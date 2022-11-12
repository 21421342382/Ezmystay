import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../elements/app_bar.dart';

class home_section extends StatelessWidget {
  const home_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(child: Align(
              alignment: Alignment.topCenter,
              child: SafeArea(child: app_bar())))
        ],
      ),
    );
  }
}
