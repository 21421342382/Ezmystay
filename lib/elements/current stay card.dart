import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:interviewproject/assets%20controller/assets_controller.dart';
import 'package:interviewproject/home/cart/cart.dart';

class current_stay extends StatelessWidget {
  const current_stay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
      },
      child: Container(
        height: 230,
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
            Image.asset(assets_controller.hotel_photo_1,height: 180,width: double.infinity,fit: BoxFit.fill,),
            Row(
              children: [
                SizedBox(width: 18,),
                Text("Current stay",style: GoogleFonts.poppins(color: Colors.black,fontSize: 16),),
                Expanded(child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(assets_controller.star_icon),
                )),
                SizedBox(width: 104,)
              ],
            ),
            Row(
              children: [
                SizedBox(width: 18,),
                Text("Checkout",style: GoogleFonts.poppins(color: Colors.black),),
                SizedBox(width: 5,),
                Text("18/10/2022, 7:10 am",style: GoogleFonts.poppins(color: Colors.blue,fontSize: 10),),
                Expanded(child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.location_pin,color: Colors.black,))),
                SizedBox(width: 5,),
                Text("Noida Sector-2",style: GoogleFonts.poppins(color: Colors.black),),
                SizedBox(width: 20,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
