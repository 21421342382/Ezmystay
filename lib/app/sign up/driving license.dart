import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';
import 'package:interviewproject/elements/containerrounded.dart';

import '../home Section/main home.dart';

class driving_license extends StatefulWidget {
  const driving_license({Key? key}) : super(key: key);

  @override
  State<driving_license> createState() => _driving_licenseState();
}

class _driving_licenseState extends State<driving_license> {
  @override

  bool adhaar_card = false;
  bool driving_license = false;
  bool voter_id = false;
  bool pan_card = false;
  bool passport = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(18),
              child : Row(
                children: [
                  InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Image.asset(assets_controller.arrow_back)),
                  Expanded(child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(assets_controller.india_flag,height: 40,width: 40,),
                  ))
                ],
              ),
            )
          )),
          SizedBox(height: 20,),
          Center(
            child: Text("E-KYC",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 20),),
          ),
          Text("(Enable Express Digital Checkin)",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 18),),
          SizedBox(height: 15,),
          Image.asset(assets_controller.group_icon),
          SizedBox(height: 10,),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 2,
                        color: Colors.grey
                    )
                  ]
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 20,),
                        adhaar_card
                        ? Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box,color: Colors.blue,),
                                SizedBox(width: 5,),
                                Text("Adhaar Card",style: GoogleFonts.poppins(color: Colors.grey),),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Scan Adhaar Card",style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey),)),
                            ),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              containerounded(height_: 140, width_: 130, assets: assets_controller.gallery_icon, title: "Gallery", description: "Upload Document"),
                              SizedBox(width: 45,),
                              Text("OR",style: GoogleFonts.poppins(color: Colors.grey),),
                              Expanded(child: Align(
                                alignment: Alignment.centerRight,
                                child:containerounded(height_: 140, width_: 130, assets: assets_controller.camera_icon, title: "Camera", description: "Scan Document"),
                              ))
                            ],
                          )
                          ],
                        )
                            :Row(
                              children: [
                                InkWell(
                                    onTap: (){
                                      setState(() {
                                        adhaar_card = true;
                                        driving_license = false;
                                        voter_id = false;
                                        pan_card = false;
                                        passport = false;
                                      });
                                    },
                                    child: Icon(Icons.check,color: Colors.black,)),
                                    SizedBox(width: 5,),
                                InkWell(
                                    onTap: (){
                                      setState(() {
                                        adhaar_card = true;
                                        driving_license = false;
                                        voter_id = false;
                                        pan_card = false;
                                        passport = false;
                                      });
                                    },
                                    child: Text("Adhaar Card",style: GoogleFonts.poppins(color: Colors.grey),))
                              ],
                            ),
                        SizedBox(height: 30,),
                        driving_license
                            ? Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box,color: Colors.blue,),
                                SizedBox(width: 5,),
                                Text("Driving License",style: GoogleFonts.poppins(color: Colors.grey),),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Scan Driving License",style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey),)),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                containerounded(height_: 140, width_: 130, assets: assets_controller.gallery_icon, title: "Gallery", description: "Upload Document"),
                                SizedBox(width: 45,),
                                Text("OR",style: GoogleFonts.poppins(color: Colors.grey),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child:containerounded(height_: 140, width_: 130, assets: assets_controller.camera_icon, title: "Camera", description: "Scan Document"),
                                ))
                              ],
                            )
                          ],
                        )
                            :Row(
                          children: [
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = true;
                                    voter_id = false;
                                    pan_card = false;
                                    passport = false;
                                  });
                                },
                                child: Icon(Icons.check,color: Colors.black,)),
                            SizedBox(width: 5,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = true;
                                    voter_id = false;
                                    pan_card = false;
                                    passport = false;
                                  });
                                },
                                child: Text("Driving License",style: GoogleFonts.poppins(color: Colors.grey),))
                          ],
                        ),
                        SizedBox(height: 30,),
                        voter_id
                            ? Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box,color: Colors.blue,),
                                SizedBox(width: 5,),
                                Text("Voter Id",style: GoogleFonts.poppins(color: Colors.grey),),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Scan Voter Id",style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey),)),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                containerounded(height_: 140, width_: 130, assets: assets_controller.gallery_icon, title: "Gallery", description: "Upload Document"),
                                SizedBox(width: 45,),
                                Text("OR",style: GoogleFonts.poppins(color: Colors.grey),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child:containerounded(height_: 140, width_: 130, assets: assets_controller.camera_icon, title: "Camera", description: "Scan Document"),
                                ))
                              ],
                            )
                          ],
                        )
                            :Row(
                          children: [
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = false;
                                    voter_id = true;
                                    pan_card = false;
                                    passport = false;
                                  });
                                },
                                child: Icon(Icons.check,color: Colors.black,)),
                            SizedBox(width: 5,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = false;
                                    voter_id = true;
                                    pan_card = false;
                                    passport = false;
                                  });
                                },
                                child: Text("Voter Id",style: GoogleFonts.poppins(color: Colors.grey),))
                          ],
                        ),
                        SizedBox(height: 30,),
                        pan_card
                            ? Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box,color: Colors.blue,),
                                SizedBox(width: 5,),
                                Text("Pan Card",style: GoogleFonts.poppins(color: Colors.grey),),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Scan Pan Card",style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey),)),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                containerounded(height_: 140, width_: 130, assets: assets_controller.gallery_icon, title: "Gallery", description: "Upload Document"),
                                SizedBox(width: 45,),
                                Text("OR",style: GoogleFonts.poppins(color: Colors.grey),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child:containerounded(height_: 140, width_: 130, assets: assets_controller.camera_icon, title: "Camera", description: "Scan Document"),
                                ))
                              ],
                            )
                          ],
                        )
                            :Row(
                          children: [
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = false;
                                    voter_id = false;
                                    pan_card = true;
                                    passport = false;
                                  });
                                },
                                child: Icon(Icons.check,color: Colors.black,)),
                            SizedBox(width: 5,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = false;
                                    voter_id = false;
                                    pan_card = true;
                                    passport = false;
                                  });
                                },
                                child: Text("Pan Card",style: GoogleFonts.poppins(color: Colors.grey),))
                          ],
                        ),
                        SizedBox(height: 30,),
                        passport
                            ? Column(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.check_box,color: Colors.blue,),
                                SizedBox(width: 5,),
                                Text("Passport",style: GoogleFonts.poppins(color: Colors.grey),),
                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("Scan Passport",style: GoogleFonts.poppins(fontSize: 8,color: Colors.grey),)),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                containerounded(height_: 140, width_: 130, assets: assets_controller.gallery_icon, title: "Gallery", description: "Upload Document"),
                                SizedBox(width: 45,),
                                Text("OR",style: GoogleFonts.poppins(color: Colors.grey),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child:containerounded(height_: 140, width_: 130, assets: assets_controller.camera_icon, title: "Camera", description: "Scan Document"),
                                ))
                              ],
                            )
                          ],
                        )
                            :Row(
                          children: [
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = false;
                                    voter_id = false;
                                    pan_card = false;
                                    passport = true;
                                  });
                                },
                                child: Icon(Icons.check,color: Colors.black,)),
                            SizedBox(width: 5,),
                            InkWell(
                                onTap: (){
                                  setState(() {
                                    adhaar_card = false;
                                    driving_license = false;
                                    voter_id = false;
                                    pan_card = false;
                                    passport = true;
                                  });
                                },
                                child: Text("Passport",style: GoogleFonts.poppins(color: Colors.grey),))
                          ],
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18,top: 20),
                          child: InkWell(
                            onTap: (){
                              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => home_section()), (route) => false);
                            },
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF5562FD)
                              ),
                              child: Center(
                                  child : Text("Continue",style: GoogleFonts.poppins(color : Colors.white,fontSize: 18),)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30,)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
