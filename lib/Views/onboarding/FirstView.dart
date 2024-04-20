import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 100,bottom: 30), // Add padding to the bottom
              child:   Text(
                "HOMEY",
                style: GoogleFonts.nunito(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),


            FutureBuilder(
              future: Future.delayed(Duration(seconds: 3)),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return Center(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        '''  
  Find your dream home with 
       Homey application    
                           ''',
                        key: ValueKey<String>('homey'),
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                      ),
                    ),
                  );
                } else {
                  return Center(
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 800),
                      child: Text(
                        '''
  Find your dream home with 
                     ease             
                         ''',
                        key: ValueKey<String>('ease'),
                        style: GoogleFonts.nunito(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black
                        ),
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
