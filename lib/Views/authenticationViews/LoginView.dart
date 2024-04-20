import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SignUp.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key});

  @override
  _LoginView createState() => _LoginView();
}

class _LoginView extends State<LoginView> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,

      bottomSheet: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: (){},
                child: Text("take a look",
                style:TextStyle(
                  color: Colors.black
                ),)
            )
          ],
        )
        ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/logo.png"),
                SizedBox(height: 10),

                Padding(
                  padding: EdgeInsets.only(bottom: 30), // Add padding to the bottom
                  child: Text(
                    "Welcome to Homey!",
                    style: GoogleFonts.nunito(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username or Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement your login logic here
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    // You can validate inputs and perform authentication
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF269CDE),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(screenWidth * 0.9, 50), // Adjust width according to screen size
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement login with Google logic here
                  },
                  icon: Image.asset(
                    'assets/images/google.png',
                    height: 27,
                  ),
                  label: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      'Login with Google',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    minimumSize: Size(screenWidth * 0.9, 50), // Adjust width according to screen size
                  ),
                ),
                SizedBox(height: 4),
                Divider(
                  color: Colors.black.withOpacity(0.7),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),);
                  },
                  child: Text(
                    'Create an Account',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 45),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
