import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class containerounded extends StatelessWidget {
  containerounded({Key? key, required this.height_, required this.width_, required this.assets, required this.title, required this.description}) : super(key: key);

final double height_ ;
final double width_;
final assets ;
final title ;
final description ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height_,
      width: width_,
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
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Container(
                height: 22,
                width: 25,
                child: Image.asset(assets,fit: BoxFit.fill,)),
          Text("${title}",style: GoogleFonts.poppins(color: Colors.grey.shade700,fontSize: 16),),
            Padding(
              padding: const EdgeInsets.only(left: 8,top: 5,bottom: 8,right: 8),
              child: Text("${description}",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: Colors.grey),),
            )
          ],
        ),
      ),
    );
  }
}
