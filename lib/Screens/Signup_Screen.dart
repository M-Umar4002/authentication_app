import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'Login_Screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool hidePassword = false;

  int length = 16;

  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  String generatePassword() {
    String numbers = '0123456789';
    String letters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String specialCharacters = '~!@#%^&*()_+{}|:""<>?`-=[]\;,./';

    String allLetters = numbers + letters + specialCharacters;

    String password = '';

    for (int i = 0; i < length; i++) {
      int index = Random().nextInt(allLetters.length);
      password += allLetters[index];
    }
    return password;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Flexible(
              fit: FlexFit.loose,
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
                        onTap: switchToLoginPage,
                        child: Container(
                          margin: EdgeInsets.only(right: 45, top: 28),
                          height: 40,
                          width: 122,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'SIGN IN',
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
              'New User? Get Started Now',
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
                    margin: EdgeInsets.only(right: 14),
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
                      margin: EdgeInsets.only(left: 14),
                      width: MediaQuery.of(context).size.width * 0.41,
                      child: Divider(
                        color: Color(0xff828282),
                      ))
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Password*',
                        style: TextStyle(
                            fontFamily: 'Al Bayan',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 3),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          passwordController.text = generatePassword();
                        },
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          width: 210,
                          decoration: BoxDecoration(
                              color: Color(0xff2F80ED),
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              'Generate a Password for Me',
                              style: GoogleFonts.cambo(
                                  color: Color(0xffFFFFFF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                            'SIGN UP',
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
              fit: FlexFit.loose,
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
