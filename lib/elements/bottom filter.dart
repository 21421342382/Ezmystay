import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class bottom_filter extends StatelessWidget {
  const bottom_filter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              Icon(Icons.filter_list_outlined,size: 28,),
              SizedBox(width: 10,),
              Text("Filter",style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.blue)
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(Icons.location_pin,color: Colors.blue,),
                    SizedBox(width: 5,),
                    Text("Chanakyapuri, New Delhi within 40 miles",style: GoogleFonts.poppins(color: Colors.blue),),
                    Expanded(child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.keyboard_arrow_down_outlined,color: Colors.black,),
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
