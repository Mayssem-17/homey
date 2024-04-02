import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/logo.png"),
            SizedBox(
              height: 30,
            ),

            Text("HOMEY",
              style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),

            SizedBox(
              height: 30,
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
                        style: TextStyle(
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
                      duration: Duration(milliseconds: 500),
                      child: Text(
                        '''
  Find your dream home with 
                     ease             
                         ''',
                        key: ValueKey<String>('ease'),
                        style: TextStyle(
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
