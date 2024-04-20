import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homey/Views/authenticationViews/LoginView.dart';


class SignUp extends StatefulWidget {
  SignUp({Key? key});

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  String? _selectedOption;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top:50 ,bottom: 5), // Reduce bottom padding
                  child: SizedBox(
                    height: 90, // Adjust height as needed
                    child: Image.asset("assets/images/logo2.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 25), // Add padding to the bottom
                  child: Text(
                    "Create your account",
                    style: GoogleFonts.nunito(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
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
                TextFormField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),

                SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.only(right: 155),
                  child: Text(
                    "Are you an agent ?",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                Row(
                  children: [
                    Expanded(
                      child: RadioListTile<String>(
                        title: Text('Yes'),
                        value: 'yes',
                        groupValue: _selectedOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile<String>(
                        title: Text('No'),
                        value: 'no',
                        groupValue: _selectedOption,
                        onChanged: (value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    // Implement your signup logic here
                    String username = _usernameController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    // You can validate inputs and perform registration
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Text(
                      'Sign Up',
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
                Divider(
                  color: Colors.black.withOpacity(0.7),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),);
                  },
                  child: Text(
                    'Already have an account? Login',
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
