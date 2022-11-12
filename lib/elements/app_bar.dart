import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

class app_bar extends StatefulWidget {
  const app_bar({Key? key}) : super(key: key);

  @override
  State<app_bar> createState() => _app_barState();
}

class _app_barState extends State<app_bar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            height: 40,
            width: double.infinity,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  height: 30,
                  child: Column(
                    children: [
                      SizedBox(height: 5,),
                      Container(
                        height: 2,
                        width: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.black
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 2,
                        width: 18,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        height: 2,
                        width: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.black
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Text("Ezmystay",style: GoogleFonts.poppins(color: Colors.blue),),
                Expanded(child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(assets_controller.like_icon),
                )),
                SizedBox(width: 10,),
                Image.asset(assets_controller.bell_icon),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width:120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey
                      )
                    ]
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10,),
                        Column(
                          children: [
                            Center(child: Text("Ezcash",style: GoogleFonts.poppins(color: Colors.black),)),
                            Text("(rewarded points)",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 8),),
                          ],
                        ),
                        SizedBox(width: 5,),
                        Image.asset(assets_controller.coin_icon)
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 18,)
              ],
            ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(color: Colors.grey,),
          )
        ],
      ),
    );
  }
}
