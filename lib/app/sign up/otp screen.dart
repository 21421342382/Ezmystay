import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

import 'complete profile.dart';

class otp_screen extends StatefulWidget {
  otp_screen({Key? key}) : super(key: key);

  @override
  State<otp_screen> createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {

  @override
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
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

  _showToast(text,condition) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.greenAccent,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          condition
              ?Icon(Icons.check,color: Colors.black87,)
              :Icon(Icons.error,color: Colors.red,),
          SizedBox(
            width: 12.0,
          ),
          Text("${text}",style: GoogleFonts.poppins(),),
        ],
      ),
    );


    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: 2),
    );

  }

  var text = 59;
  bool enable_button = false;

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
          ,Text("Phone Verification",style: GoogleFonts.poppins(fontSize: 24,color: Colors.black),),
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
              _showToast("Verification Successfull",true);
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
