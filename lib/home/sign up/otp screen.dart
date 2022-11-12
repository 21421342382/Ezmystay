import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'complete profile.dart';

class otp_screen extends StatefulWidget {
  otp_screen({Key? key}) : super(key: key);

  @override
  State<otp_screen> createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {

  @override

  var text = 59;
  bool enable_button = false;

  void initState() {

    Timer mytimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(text == 0){
        setState(() {
          text = 00;
          enable_button = true;
        });
        timer.cancel();
      }else{
        setState(() {
          text = text -1;
        });
      }
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
          SafeArea(child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset(assets_controller.close_icon)),
                Expanded(child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("00:${text}",style: GoogleFonts.poppins(color: Colors.grey),),
                ))
              ],
            ),
          )),
          Center(child: Icon(Icons.mail,color: Colors.brown,size: 100,))
          ,Text("Email Verification",style: GoogleFonts.poppins(fontSize: 24,color: Colors.black),),
          SizedBox(height: 10,),
          Text("Please Enter the OTP sent on your device",style: GoogleFonts.poppins(color: Colors.grey),),
          SizedBox(height: 40,),
          OtpTextField(
            numberOfFields: 4,
            showCursor: false,
            fieldWidth: 60,
            cursorColor: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            borderColor: Colors.black,
            showFieldAsBox: true,
            textStyle: GoogleFonts.poppins(),
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode){
              showTopSnackBar(
                  context,
                  CustomSnackBar.success(
                    message:
                    "OTP Entered Sucessfully",
                  )
              );
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => complete_profile()));
            }, // end onSubmit
          ),
          SizedBox(height: 40,),
         Center(
           child: InkWell(
             onTap: (){

             },
             child: Text("Resend OTP",style: GoogleFonts.poppins(color: enable_button
             ?Colors.blue
             : Colors.grey
             ),),
           ),
         )
        ],
      )
    );
  }
}
