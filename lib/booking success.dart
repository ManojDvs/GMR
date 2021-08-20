import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gmrui/home.dart';

class BookingSuccess extends StatefulWidget {
  BookingSuccess({Key? key}) : super(key: key);

  @override
  _BookingSuccessState createState() => _BookingSuccessState();
}

class _BookingSuccessState extends State<BookingSuccess> {
  static const bluecolor = Color(0xff123978);
  static const yellowcolor = Color(0xffF7A83C);
  static const bgcolor = Color(0xffF5F5F6);
  static const orangecolor = Color(0xffF57211);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bluecolor,
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text('Booking Confirmation Request'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          color: bgcolor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 60,
                    width: double.infinity,
                    color: bluecolor,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    padding:
                        new EdgeInsets.only(top: 20, right: 10.0, left: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: yellowcolor,
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                      height: 90,
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '123456789',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'AWB / Shipping Bill No',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Container(
                decoration: BoxDecoration(
                    color: yellowcolor.withOpacity(0.7),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                margin: EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                child: Icon(
                  Icons.check,
                  color: bluecolor,
                  size: 60,
                ),
              ),
              SizedBox(height: 24),
              Container(
                margin: EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                child: Text(
                  'Successfully',
                  style: TextStyle(
                    color: bluecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(height: 4),
              Container(
                margin: EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                child: Text(
                  'Booked Time Slot',
                  style: TextStyle(
                    color: bluecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
              ),
              SizedBox(height: 24),
              Container(
                margin: EdgeInsets.only(
                  left: 18,
                  right: 18,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Text(
                            '4th June 2021',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            '5:30 - 6:00 pm',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Container(
                          child: Text(
                            'PDZ-003',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          child: Text(
                            'Truck Door',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Container(
              //   margin: EdgeInsets.only(left: 18, right: 18),
              //   child: Text(
              //     'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ',
              //     style: TextStyle(
              //       color: bluecolor,
              //       fontWeight: FontWeight.w400,
              //       fontSize: 16,
              //     ),
              //   ),
              // ),
              // SizedBox(height: 24),
              Container(
                margin: EdgeInsets.only(
                  left: 12,
                  right: 12,
                ),
                child: Text(
                  'Do you want us to remind you ?',
                  style: TextStyle(
                    color: bluecolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Material(
                        color: yellowcolor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        child: Ink(
                          child: InkWell(
                            onTap: () {
                              Timer(Duration(milliseconds: 100), () {
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MyHome();
                                }), (route) => false);
                              });
                            },
                            splashColor: Colors.white.withOpacity(0.5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: yellowcolor,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Center(
                                child: Text(
                                  'Yes',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 18),
                    SizedBox(
                      width: 80,
                      child: Material(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        child: Ink(
                          child: InkWell(
                            onTap: () {
                              Timer(Duration(milliseconds: 100), () {
                                Navigator.pushAndRemoveUntil(context,
                                    MaterialPageRoute(builder: (context) {
                                  return MyHome();
                                }), (route) => false);
                              });
                            },
                            splashColor: Colors.grey.withOpacity(0.5),
                            child: Container(
                              decoration: BoxDecoration(
                                //border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Center(
                                child: Text(
                                  'No',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
