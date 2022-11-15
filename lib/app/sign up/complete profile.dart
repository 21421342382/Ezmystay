import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

import 'driving license.dart';

class complete_profile extends StatefulWidget {
  const complete_profile({Key? key}) : super(key: key);

  @override
  State<complete_profile> createState() => _complete_profileState();
}

class _complete_profileState extends State<complete_profile> {
  @override

  bool male = false;
  bool female = false;
  bool other = false;
  bool show_animation = false;
  bool on_clicked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("Home >",style: GoogleFonts.poppins(color: Colors.blue),),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                color: Colors.grey
                            )
                          ],
                          borderRadius: BorderRadius.all(Radius.circular(60))
                      ),
                      child: Image.asset(assets_controller.profile_photo),
                    ),
                  ),
                  Center(
                    child: Text("Vivek Kumar",style: GoogleFonts.poppins(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  Center(
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0,3),
                                blurRadius: 2,
                                color: Colors.grey
                            )
                          ]
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Icon(Icons.edit,color: Colors.black,))),
                            Center(child: Text("Edit Profile",style: GoogleFonts.poppins(),)),
                            SizedBox(width: 10,)
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Name",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFEFF4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: TextField(
                            style: GoogleFonts.poppins(color: Colors.grey),
                            decoration: InputDecoration.collapsed(
                                hintText: "Enter Name",
                                hintStyle: GoogleFonts.poppins(color: Colors.grey)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Gender",style: GoogleFonts.poppins(color: Colors.black87),),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: Row(
                      children: [
                        InkWell(
                          onTap : (){
                            setState(() {
                              male = true;
                              female = false;
                              other = false;
                            });
                          },
                          child: male
                              ?Icon(Icons.radio_button_checked,color: Colors.blue,)
                              :Icon(Icons.radio_button_off_outlined,color: Colors.blue,),),
                        SizedBox(width: 8,),
                        Text("Male",style: GoogleFonts.poppins(color: Colors.black87),),
                        SizedBox(width: MediaQuery.of(context).size.width * 1/7,),
                        InkWell(
                          onTap : (){
                            setState(() {
                              male = false;
                              female = true;
                              other = false;
                            });
                          },
                          child: female
                              ?Icon(Icons.radio_button_checked,color: Colors.blue,)
                              :Icon(Icons.radio_button_off_outlined,color: Colors.blue,),),
                        SizedBox(width: 8,),
                        Text("Female",style: GoogleFonts.poppins(color: Colors.black87),),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap : (){
                                setState(() {
                                  male = false;
                                  female = false;
                                  other = true;
                                });
                              },
                              child: other
                                  ?Icon(Icons.radio_button_checked,color: Colors.blue,)
                                  :Icon(Icons.radio_button_off_outlined,color: Colors.blue,),),
                          ),
                        ),
                        SizedBox(width: 8,),
                        Text("Other",style: GoogleFonts.poppins(color: Colors.black87),),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Date of Birth",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFEFF4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                child: TextField(
                                  style: GoogleFonts.poppins(color: Colors.grey),
                                  inputFormatters:[
                                    LengthLimitingTextInputFormatter(2),
                                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration.collapsed(
                                      hintText: "MM",
                                      hintStyle: GoogleFonts.poppins(color: Colors.grey)
                                  ),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8),
                                child: Container(
                                  height: double.infinity,
                                  width: 1,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 25),
                                  child: TextField(
                                    inputFormatters:[
                                      LengthLimitingTextInputFormatter(2),
                                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                    style: GoogleFonts.poppins(color: Colors.grey),
                                    decoration: InputDecoration.collapsed(
                                        hintText: "DD",
                                        hintStyle: GoogleFonts.poppins(color: Colors.grey)
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8),
                                child: Container(
                                  height: double.infinity,
                                  width: 1,
                                  color: Colors.black,
                                ),
                              ),
                              Container(
                                width: 130,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: TextField(
                                    inputFormatters:[
                                      LengthLimitingTextInputFormatter(4),
                                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    keyboardType: TextInputType.number,
                                    style: GoogleFonts.poppins(color: Colors.grey),
                                    decoration: InputDecoration.collapsed(
                                        hintText: "YYYY",
                                        hintStyle: GoogleFonts.poppins(color: Colors.grey)
                                    ),
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Nationality",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                          show_animation = !show_animation;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 1000),
                        height: show_animation ?300 :60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xFFEFEFF4),
                          borderRadius: BorderRadius.all(Radius.circular(10)),

                        ),
                        child: show_animation
                            ?Column(
                          children: [
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                SizedBox(width: 8,),
                                Image.asset(assets_controller.india_flag),
                                SizedBox(width: 10,),
                                Text("India",style: GoogleFonts.poppins(color: Colors.black87),),
                                Expanded(child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.keyboard_arrow_up_outlined,color: Colors.black,),
                                )),
                                SizedBox(width: 10,),
                              ],
                            ),
                          ],
                        )
                            :Center(
                          child: Row(
                            children: [
                              SizedBox(width: 8,),
                              Image.asset(assets_controller.india_flag),
                              SizedBox(width: 10,),
                              Text("India",style: GoogleFonts.poppins(color: Colors.black87),),
                              Expanded(child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_drop_down,color: Colors.black,),
                              )),
                              SizedBox(width: 10,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Address",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFEFF4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: TextField(
                            style: GoogleFonts.poppins(color: Colors.grey),
                            decoration: InputDecoration.collapsed(
                                hintText: "Email Address",
                                hintStyle: GoogleFonts.poppins(color: Colors.grey)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Mobile",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFEFF4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Row(
                            children: [
                              Image.asset(assets_controller.india_flag),
                              SizedBox(width: 5,),
                              Text("+91",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 17),),
                              SizedBox(width: 5,),
                              Icon(Icons.arrow_drop_down_outlined,color: Colors.grey,),
                              Padding(
                                padding: const EdgeInsets.only(top: 8,bottom: 8),
                                child: Container(
                                  height: double.infinity,
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(width: 20,),
                              Text("7389XXXX453",style: GoogleFonts.poppins(color: Colors.grey),),
                              Expanded(child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Verify",style: GoogleFonts.poppins(color: Colors.green),),
                              ),),
                              Icon(Icons.check,color: Colors.green,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFEFF4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Row(
                            children: [
                              Text("Let's Code India ********* .com",style: GoogleFonts.poppins(color: Colors.grey),),
                              Expanded(child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Verify",style: GoogleFonts.poppins(color: Colors.black),),
                              ),),
                              Icon(Icons.edit,color: Colors.black,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",style: GoogleFonts.poppins(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xFFEFEFF4),
                        borderRadius: BorderRadius.all(Radius.circular(10)),

                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 18,right: 18),
                          child: Row(
                            children: [
                              Text("************",style: GoogleFonts.poppins(color: Colors.grey),),
                              Expanded(child: Align(
                                alignment: Alignment.centerRight,
                                child: Text("Verify",style: GoogleFonts.poppins(color: Colors.black),),
                              ),),
                              Icon(Icons.edit,color: Colors.black,)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 18,),
                      InkWell(
                          onTap: (){
                            setState(() {
                              on_clicked = !on_clicked;
                            });
                          },
                          child: on_clicked
                              ? Icon(Icons.check_box,color: Colors.blue,)
                              : Icon(Icons.check,color: Colors.black,)
                      ),
                      SizedBox(width: 8,),
                      InkWell(
                        onTap: (){
                          setState(() {
                            on_clicked = !on_clicked;
                          });
                        },
                        child: Text("Enable Express digital checkin",style: GoogleFonts.poppins(color: Colors.black),),
                      ),
                      SizedBox(width: 18,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left: 18,right: 18,top: 20),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => driving_license()));
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color(0xFF5562FD)
                        ),
                        child: Center(
                            child : Text("Save",style: GoogleFonts.poppins(color : Colors.white,fontSize: 18),)
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
    );
  }
}
