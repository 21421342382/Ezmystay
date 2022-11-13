import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:interviewproject/elements/bottom%20filter.dart';
import 'package:interviewproject/elements/current%20stay%20card.dart';
import 'package:interviewproject/elements/hotel%20card.dart';

import '../../elements/app_bar.dart';

class home_section extends StatelessWidget {
  const home_section({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Align(
              alignment: Alignment.topCenter,
              child: SafeArea(child: app_bar())),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: current_stay(),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context , int index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: hotel_card(),
              );
            }),
          ),
          bottom_filter()
        ],

      ),
    );
  }
}
