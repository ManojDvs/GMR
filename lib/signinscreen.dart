import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gmrui/mainscreen.dart';
import 'package:page_transition/page_transition.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  static const bluecolor = Color(0xff123978);
  static const yellowcolor = Color(0xffF7A83C);
  static const bgcolor = Color(0xffF5F5F6);
  static const orangecolor = Color(0xffF57211);
  bool shouldhidepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgcolor,
        elevation: 0.0,
        // iconTheme: IconThemeData(color: darkredColor),
        title: Image.asset(
          'assets/gmr-logo.png',
          width: 100,
        ),
        brightness: Brightness.dark,
        centerTitle: true,
      ),
      body:
          // Container(
          //   margin: EdgeInsets.all(50),
          //   child: BeautyTextfield(
          //     width: 200,
          //     height: SizeConfig.heightMultiplier * 6,
          //     prefixIcon: Icon(Icons.access_alarm),
          //     inputType: TextInputType.text,
          //   ),
          // );
          GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: Container(
          color: bgcolor,
          // margin: EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //margin: EdgeInsets.only(top: 20),
                    child: Text(
                      'welcome',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Text(
                          'Signin',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 15),
                        child: Text(
                          'to continue',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.black),
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8, top: 8),
                    constraints: BoxConstraints(minHeight: 58, maxHeight: 148),
                    child: new TextField(
                      // autocorrect: false,
                      // enableSuggestions: false,
                      textInputAction: TextInputAction.done,
                      // enabled: email,
                      // inputFormatters: <TextInputFormatter>[
                      //   LengthLimitingTextInputFormatter(20),
                      // ],
                      cursorColor: bluecolor,
                      decoration: new InputDecoration(
                        enabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: bluecolor.withOpacity(0.5))),
                        disabledBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: bluecolor.withOpacity(0.2))),
                        focusedBorder: new OutlineInputBorder(
                            borderSide: new BorderSide(
                          color: bluecolor.withOpacity(0.5),
                        )),

                        // hintText: 'Tell us about yourself',
                        // helperText:
                        //     'Keep it short, this is just a demo.',
                        labelText: 'Username',
                        // labelStyle: TextStyle(
                        //     color: email ? textcolor : Colors.grey,
                        //     fontWeight: FontWeight.w400),
                        prefixText: ' ',
                      ),
                      // style: GoogleFonts.openSans(
                      //   fontSize: SizeConfig.heightMultiplier * 2,
                      //   color: Colors.black,
                      // ),
                      // controller: controller1,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 8, top: 8),
                    constraints: BoxConstraints(minHeight: 58, maxHeight: 148),
                    child: new TextField(
                      // autocorrect: false,
                      // enableSuggestions: false,
                      keyboardType: TextInputType.streetAddress,
                      //  enabled: mobileno,

                      textInputAction: TextInputAction.done,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      //   LengthLimitingTextInputFormatter(10),
                      // ],
                      cursorColor: bluecolor,
                      enableSuggestions: false,
                      autocorrect: false,
                      obscureText: shouldhidepassword,
                      decoration: new InputDecoration(
                          enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: bluecolor.withOpacity(0.5))),
                          disabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: bluecolor.withOpacity(0.2))),
                          focusedBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(
                            color: bluecolor.withOpacity(0.5),
                          )),

                          // hintText: 'Tell us about yourself',
                          // helperText:
                          //     'Keep it short, this is just a demo.',
                          labelText: 'Password',
                          // labelStyle: TextStyle(
                          //     color: mobileno ? textcolor : Colors.grey,
                          //     fontWeight: FontWeight.w400),
                          prefixText: ' ',
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (shouldhidepassword) {
                                    shouldhidepassword = false;
                                  } else {
                                    shouldhidepassword = true;
                                  }
                                });
                              },
                              child: Icon(
                                Icons.remove_red_eye,
                                color: shouldhidepassword
                                    ? bluecolor
                                    : Colors.grey,
                              ))),
                      // style: GoogleFonts.openSans(
                      //   fontSize: SizeConfig.heightMultiplier * 2,
                      //   color: Colors.black,
                      // ),
                      //  controller: controller2,
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 16,
                      bottom: 16,
                    ),
                    child: SizedBox(
                      height: 50,
                      width: double.maxFinite,
                      child: ElevatedButton(
                        child: Text(
                          'Submit',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: Colors.white),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(bluecolor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              TextStyle(color: Colors.white)),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 1000),
                              child: MainScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
