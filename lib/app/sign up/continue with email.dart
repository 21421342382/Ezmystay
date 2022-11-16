import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';

import '../../elements/containerrounded.dart';
import '../../terms & condition/terms & condition.dart';
import '../home Section/main home.dart';
import '../sign up/complete profile.dart';
import 'forgot password.dart';

class continue_with_email extends StatefulWidget {
  continue_with_email({Key? key}) : super(key: key);

  @override
  State<continue_with_email> createState() => _continue_with_emailState();
}

class _continue_with_emailState extends State<continue_with_email> {
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
  TextEditingController password = new TextEditingController();

  bool on_clicked = false;

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(18.0),
                child: InkWell(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => home_section()));
                    },
                    child: Image.asset(assets_controller.close_icon)),
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10.0),
              child: Text("Sign Up/Log in with EzMyStay",style: GoogleFonts.poppins(fontSize :24 ,
                color : Colors.black87,),),
            ),
            Text("Extra Discounts, Faster Check-ins, Simple!",style: GoogleFonts.poppins(fontSize: 17,color: Colors.grey),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 200,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18,left: 13,),
                      child: containerounded(height_: 170,width_: MediaQuery.of(context).size.width * 0.30,assets: assets_controller.wallet_icon,title: "Earn ₹ 200",description: "Create your account and get it in Your Wallet",),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18,left: 8,),
                      child: containerounded(height_: 170,width_: MediaQuery.of(context).size.width * 0.30,assets: assets_controller.tag_icon,title: "Upto 20% Off",description: "Use coupon Code CTFIRST on first Flights & Hotels Booking",),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 18,left: 8,right: 8),
                      child: containerounded(height_: 170,width_: MediaQuery.of(context).size.width * 0.30,assets: assets_controller.gift_icon,title: "Use Rewards",description: "Redeem Ezmystau supercoins on every flight",),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 550,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2.0,
                          color: Colors.grey.shade400
                      )
                    ]
                ),
                child: Column(
                  children: [
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
                                  controller: password,
                                  style: GoogleFonts.poppins(color: Colors.grey),
                                  decoration: InputDecoration.collapsed(
                                      hintText: "Password",
                                      hintStyle: GoogleFonts.poppins(color: Colors.grey)
                                  ),
                                ),
                              )
                            ],
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
                          child: Text("Keep me logged in",style: GoogleFonts.poppins(color: Colors.grey),),
                        ),
                        Expanded(child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgot_password_page_1()));
                                },
                                child: Text("Forgot Password ?",style: GoogleFonts.poppins(color: Colors.blue),))))
                        ,SizedBox(width: 18,),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18,top: 20),
                      child: InkWell(
                        onTap: (){
                          if(email.text == ""){
                            _showToast("Please Enter Email",false);
                          }else{
                            if(password.text == ""){
                              _showToast("Please Enter Password",false);
                            }else{
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) => complete_profile()));
                            }
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
                              child : Text("Login",style: GoogleFonts.poppins(color : Colors.white,fontSize: 18),)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,right: 8),
                            child: Container(height: 1,
                              width: double.infinity,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text("or",style: GoogleFonts.poppins(color: Colors.black),),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20,left: 8),
                            child: Container(height: 1,
                              width: double.infinity,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18),
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFEFEFF4),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              SizedBox(width: 70,),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 0),
                                child: InkWell(
                                  onTap: (){
                                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => complete_profile()));
                                  },
                                  child: Container(

                                      child: Icon(
                                        Icons.phone_android_sharp,color: Colors.grey,
                                        size: 26,
                                      )),
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text("Continue With Phone",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 16),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 18,right: 18),
                      child: Divider(color: Colors.grey,),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => terms_condition()));
                      },
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          text: 'By Continuing, you agree ezmystay ',

                          style: GoogleFonts.poppins(color: Colors.grey),
                          children: const <TextSpan>[
                            TextSpan(
                                text: 'privacy policy', style: TextStyle(color: Colors.blue)),
                            TextSpan(
                                text: ' & ', style: TextStyle(color: Colors.grey)),
                            TextSpan(
                                text: 'terms of use', style: TextStyle(color: Colors.blue)),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
