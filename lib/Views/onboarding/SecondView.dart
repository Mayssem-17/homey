import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
              child:Container(
                color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Image.asset("assets/images/secondViewImg.png")
                  ),

                  SizedBox(height: 40),

                  Text('''            New to HOMEY ?
    Let us guide you through our
    features with a quick tour !   
    ''',
                    style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: Colors.black
                    ),),
                ],
              ),
              ),);
  }
}
