import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_one/screens/Login.dart';
import 'package:project_one/widgets/button.dart';

class AdminSignup extends StatefulWidget {
  const AdminSignup({super.key});

  @override
  State<AdminSignup> createState() => _AdminSignupState();
}

class _AdminSignupState extends State<AdminSignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xF7FCFCFC),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16),
            child: Text(
              'Admin Sign Up',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DM Sans'),
            ),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 4),
            child: Text(
              'Sign up now to register your\nfarmhouse or hotels with us ',
              style: TextStyle(fontSize: 16, fontFamily: 'DM Sans'),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            'assets/icons/person.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.grey),
                        prefixIcon: SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            'assets/icons/email.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            'assets/icons/lock.svg',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off,
                          color: Colors.green,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.white70),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.green),
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    Button(
                        height: 55,
                        width: 400,
                        onPressed: () {},
                        label: 'Sign Up'),
                    SizedBox(height: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'By clicking signup you agree to our',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Terms & ',
                              style: TextStyle(color: Color(0XFF01C000)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Conditions ',
                              style: TextStyle(color: Color(0XFF01C000)),
                            ),
                            Text(
                              ' and ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              ' Privacy Policy ',
                              style: TextStyle(color: Color(0XFF01C000)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login(
                                        selectedRole: "",
                                      )),
                            );
                          },
                          child: Text(
                            "Login Now",
                            style: TextStyle(
                              color: Color(0XFF01C000),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DM Sans',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
