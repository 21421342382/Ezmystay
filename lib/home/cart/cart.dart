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
          ),
          SizedBox(height: 10,),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 18),
                child: Text("Bill Details",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 18),),
              )),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.grey
                  )
                ]
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        children: [
                          Text("Item Total",style: GoogleFonts.poppins(color: Colors.black87,fontSize: 16),),
                          Expanded(child: Align(
                            alignment: Alignment.centerRight,
                            child: Text("₹0",style: GoogleFonts.poppins(color: Colors.black),),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,top: 0),
                      child: Text("Room no",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,top: 18),
                      child: Text("Free room service",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Divider(color: Colors.grey,),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,),
                      child: Text("Apply Coupon",style: GoogleFonts.poppins(color: Colors.black87,fontSize: 17),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,top: 18,right: 18,bottom: 8),
                      child: Row(
                        children: [
                          Text("Lorem impusm is simply text printing",style: GoogleFonts.poppins(color: Colors.grey),),
                          Expanded(child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(Icons.arrow_right_alt_outlined,color: Colors.blue,),
                          ))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: Divider(color: Colors.grey,),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18,),
                      child: Row(
                        children: [
                          Text("To pay",style: GoogleFonts.poppins(color: Colors.black87),),
                          Expanded(child: Align(
                            alignment: Alignment.centerRight,
                            child: Text("₹0.00",style: GoogleFonts.poppins(color: Colors.black),),
                          )),
                          SizedBox(width : 18)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 150,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Divider(color: Colors.grey,),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text("Almost There",style: GoogleFonts.poppins(color: Colors.black87,fontSize: 18),),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18),
                      child: Text("Quickly to place order",style: GoogleFonts.poppins(color: Colors.grey,),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,top: 8),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.blue
                      ),
                      child: Center(
                        child: Text("Order Now",style: GoogleFonts.poppins(color: Colors.white,fontSize: 18),),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
