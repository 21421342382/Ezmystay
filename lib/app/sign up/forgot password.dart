import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

import '../home Section/main home.dart';

class forgot_password_page_1 extends StatefulWidget {
  forgot_password_page_1({Key? key}) : super(key: key);

  @override
  State<forgot_password_page_1> createState() => _forgot_password_page_1State();
}

class _forgot_password_page_1State extends State<forgot_password_page_1> {
  @override
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }


  _showToast(text,condition) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          condition
              ?Icon(Icons.check,color: Colors.green,)
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

  TextEditingController email = new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset(assets_controller.close_icon)),
            ),
          )),
          SizedBox(height: 10,),
          Center(child: Text("Forgot Password",style: GoogleFonts.poppins(color: Colors.black87,fontSize: 20),)),
          Padding(
            padding: const EdgeInsets.only(left: 18,right: 18,top: 30),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFEFEFF4),
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Expanded(
                      child: TextFormField(
                        controller: email,
                        style: GoogleFonts.poppins(color: Colors.grey),
                        decoration: InputDecoration.collapsed(
                            hintText: "Email address",
                            hintStyle: GoogleFonts.poppins(color: Colors.grey)
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18,right: 18,top: 20),
            child: InkWell(
              onTap: (){
                if(email.text == ""){
                  _showToast("Please Enter Email",false);
                }else{
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgot_password(email: email.text)));
                  }
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF5562FD)
                ),
                child: Center(
                    child : Text("Next",style: GoogleFonts.poppins(color : Colors.white,fontSize: 18),)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class forgot_password extends StatefulWidget {
  forgot_password({Key? key, required this.email}) : super(key: key);
final email ;

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  @override
  late FToast fToast;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast.init(context);
  }


  _showToast(text,condition) {
    Widget toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.grey.shade200,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          condition
              ?Icon(Icons.check,color: Colors.green,)
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SafeArea(child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Image.asset(assets_controller.close_icon)),
              ),
            )),
            SizedBox(height: 10,),
            Text("Forgot Password",style: GoogleFonts.poppins(fontSize: 24,color: Colors.grey),),
            SizedBox(height: 20,),
            Text("${widget.email}",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 20),),
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
              }, // end onSubmit
            ),
            SizedBox(height: 40,),
            Center(
              child: InkWell(
                onTap: (){

                },
                child: Text("Resend OTP",style: GoogleFonts.poppins(color: Colors.blue
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
