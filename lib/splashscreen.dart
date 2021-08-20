import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gmrui/mainscreen.dart';
import 'package:gmrui/signinscreen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const bgcolor = Color(0xffF5F5F6);
  bool isusernew = false;
  bool isready = false;
  @override
  void initState() {
    checkprefs();

    super.initState();
  }

  // void caluculatedatedifference(DateTime prefftime) async {
  //   DateTime nowtime = DateTime.now();
  //   var difference = nowtime.difference(prefftime);
  //   int min = difference.inMinutes;

  //   if (min < 660) {
  //     navigatetohome();
  //   } else {
  //     final SharedPreferences prefs = await SharedPreferences.getInstance();
  //     await prefs.clear();
  //     Navigator.pushAndRemoveUntil(context,
  //         MaterialPageRoute(builder: (context) {
  //       return Signin();
  //     }), (route) => false);
  //   }
  // }

  checkprefs() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          PageTransition(
            type: PageTransitionType.rightToLeft,
            duration: Duration(milliseconds: 1000),
            child: SigninScreen(),
          ),
          (route) => false);
    });
    // final SharedPreferences prefs = await SharedPreferences.getInstance();
    // var tokentime = prefs.getString('tokentime');
    //await Future.delayed(Duration(seconds: 2));
    // print('$tokentime');
    // if (tokentime == null) {
    //   isusernew = true;
    //   navigatetosignin();
    // } else {
    //   caluculatedatedifference(DateTime.parse(tokentime));
    // }
    //navigatetohome();
  }

  // navigatetosignin() {
  //   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
  //     return Signin();
  //   }), (route) => false);
  // }

  navigatetohome() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // backgroundColor: darkredColor, // status bar and navigation bar color
      //   // brightness: Brightness.dark,
      //   elevation: 0,
      // ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: bgcolor,
        child: Center(
          child: SizedBox(
            width: 250,
            // height: 100,
            child: Container(
              color: bgcolor,
              child: Image.asset(
                'assets/gmr-logo.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
