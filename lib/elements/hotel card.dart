import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

import '../app/cart/cart.dart';

class hotel_card extends StatelessWidget {
  const hotel_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
      },
      child: Container(
        height: 150,
        width: double.infinity,

        child: Row(
          children: [
            Container(
              width: 250,
              child: Column(
                children: [
                  Align(
                      alignment : Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8,top: 8),
                        child: Text("Aerocity",style: GoogleFonts.poppins(color: Colors.black,fontSize: 20),),
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Image.asset(assets_controller.star_icon),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Icon(Icons.location_pin,color: Colors.black,),
                          Text("South West",style: GoogleFonts.poppins(color: Colors.black),)
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text("Lorem Ipsum is simply dummy text",style: GoogleFonts.poppins(color: Colors.black),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Image.asset(assets_controller.hotel_photo_2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
