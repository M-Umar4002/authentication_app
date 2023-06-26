import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Signup_Screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePassword = false;

  void switchToSignupPage() {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return SignupPage();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Flexible(
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/header.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          switchToSignupPage();
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 45, top: 28),
                          height: 40,
                          width: 122,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'SIGN UP',
                              style: GoogleFonts.cambo(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Color(0xff2F80ED)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Text(
              'Sign In To Continue',
              style: TextStyle(
                  fontFamily: 'Al Bayan',
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff4F4F4F)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12, bottom: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/googleIcon.png',
                    width: 40,
                    height: 26,
                  ),
                  Image.asset(
                    'assets/facebookIcon.png',
                    width: 27,
                    height: 26,
                  ),
                  Image.asset(
                    'assets/twitterIcon.png',
                    width: 26.82,
                    height: 25.79,
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 22),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Divider(
                      color: Color(0xff828282),
                    ),
                  ),
                  Text(
                    'OR',
                    style: TextStyle(
                        fontFamily: 'Al Bayan',
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 22),
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Divider(
                      color: Color(0xff828282),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 45),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Email ID*',
                        style: TextStyle(
                            fontFamily: 'Al Bayan',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 35,
                    child: TextFormField(
                      controller: emailController,
                      cursorColor: Color(0xff828282),
                      textAlignVertical: TextAlignVertical.bottom,
                      style: TextStyle(
                          fontFamily: 'Al Bayan',
                          color: Color(0xff828282),
                          fontSize: 15),
                      decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(
                              fontFamily: 'Al Bayan',
                              color: Color(0xff828282),
                              fontSize: 15),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54))),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Password*',
                        style: TextStyle(
                            fontFamily: 'Al Bayan',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                fontFamily: 'Al Bayan',
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 25),
                    height: 35,
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: hidePassword,
                      cursorColor: Color(0xff828282),
                      textAlignVertical: TextAlignVertical.bottom,
                      style: TextStyle(
                          fontFamily: 'Al Bayan',
                          color: Color(0xff828282),
                          fontSize: 15),
                      decoration: InputDecoration(
                          hintText: 'Enter your Password',
                          hintStyle: TextStyle(
                              fontFamily: 'Al Bayan',
                              color: Color(0xff828282),
                              fontSize: 15),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black54)),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidePassword = !hidePassword;
                              });
                            },
                            icon: Icon(hidePassword
                                ? Icons.visibility_off
                                : Icons.visibility),
                            color: Color(0xff828282),
                          )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('Email: ${emailController.text}');
                      print('Password: ${passwordController.text}');
                    },
                    child: Container(
                        height: 44,
                        child: Center(
                          child: Text(
                            'SIGN IN',
                            style: GoogleFonts.cambo(
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff2F80ED),
                            borderRadius: BorderRadius.circular(5))),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 6, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Terms and Conditions',
                            style: TextStyle(
                                fontFamily: 'Al Bayan',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff4F4F4F)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            '|',
                            style: TextStyle(
                                fontFamily: 'Al Bayan',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff4F4F4F)),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                                fontFamily: 'Al Bayan',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff4F4F4F)),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                child: Image.asset(
                  "assets/footer.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
