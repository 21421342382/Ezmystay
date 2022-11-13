import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

class cart extends StatelessWidget {
  const cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 8,right: 8,top: 8),
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        Image.asset(assets_controller.arrow_back),
                        SizedBox(width: 10,),
                        Text("Cart",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 18),)
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(color: Colors.grey,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18),
            child: Container(
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 250,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 16,left: 12),
                            child: Column(
                              children: [
                                Text("Check Hotel",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 18),
                                textAlign: TextAlign.left,
                                ),
                                Text("Hong Kong Style",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 18),
                                textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.grey)
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(width: 5,),
                                  Icon(Icons.key,color: Colors.grey,),
                                  SizedBox(width: 5,),
                                  Text("Room No",style: GoogleFonts.poppins(color: Colors.grey),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8),
                              child: Divider(
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Text("Write instructions for Hotel",style: GoogleFonts.poppins(color: Colors.grey),),
                                  Expanded(child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Icon(Icons.add_circle,color: Colors.grey,),
                                  ))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
