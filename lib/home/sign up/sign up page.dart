import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';
import 'package:interviewproject/elements/containerrounded.dart';
import 'package:interviewproject/home/sign%20up/otp%20screen.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../login/login page.dart';


class sign_up_page extends StatelessWidget {
  sign_up_page({Key? key}) : super(key: key);

  @override

  TextEditingController ph_no = new TextEditingController();
  TextEditingController country_code = new TextEditingController();

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Image.asset(assets_controller.close_icon),
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
                    child: containerounded(height_: 170,width_: 140,assets: assets_controller.wallet_icon,title: "Earn ₹ 200",description: "Create your account and get it in Your Wallet",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18,left: 8,),
                    child: containerounded(height_: 170,width_: 140,assets: assets_controller.tag_icon,title: "Upto 20% Off",description: "Use coupon Code CTFIRST on first Flights & Hotels Booking",),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18,left: 8,right: 8),
                    child: containerounded(height_: 170,width_: 140,assets: assets_controller.gift_icon,title: "Use Rewards",description: "Redeem Ezmystau supercoins on every flight",),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 400,
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
                            SizedBox(width: 30,),
                            Container(
                              width: 30,
                              child: TextFormField(
                                controller: country_code,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(4),
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.number,
                                style: GoogleFonts.poppins(color: Colors.black),
                                decoration: InputDecoration.collapsed(
                                    hintText: "91",
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
                            SizedBox(width: 20,),
                            Expanded(
                              child: TextFormField(
                                controller: ph_no,
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                keyboardType: TextInputType.number,
                                style: GoogleFonts.poppins(color: Colors.black),
                                decoration: InputDecoration.collapsed(
                                  hintText: "Enter Mobile Number",
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
                    child: InkWell(
                      onTap: (){
                        if(ph_no.text == ""){
                          showTopSnackBar(
                            context,
                            CustomSnackBar.error(
                              message:
                              "Something went wrong. Please Enter Phone Number",
                            ),
                          );
                        }else{
                          if(country_code.text == ""){
                            showTopSnackBar(
                                context,
                                CustomSnackBar.error(
                                message:
                                "Something went wrong. Please Enter Phone Code",
                            )
                            );
                          }else{
                            print(country_code.text + ph_no.text);
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => otp_screen()));
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
                            child : Text("Get OTP",style: GoogleFonts.poppins(color : Colors.white,fontSize: 18),)
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
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => login_page()));
                      },
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
                              Container(
                                  height: 14.43,
                                  width: 19.24,
                                  child: Image.asset(assets_controller.envelop_icon,fit: BoxFit.fill,)),
                            SizedBox(width: 20,),
                              Text("Continue With Email",style: GoogleFonts.poppins(color: Colors.grey,fontSize: 16),)
                            ],
                          ),
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
                  RichText(
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
