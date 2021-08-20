import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gmrui/booking.dart';

class BookingDetails extends StatefulWidget {
  BookingDetails({Key? key}) : super(key: key);

  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  static const bluecolor = Color(0xff123978);
  static const yellowcolor = Color(0xffF7A83C);
  static const bgcolor = Color(0xffF5F5F6);
  static const orangecolor = Color(0xffF57211);
  bool istapped = false;
  List<Tab> tabslist = [
    Tab(
      text: 'Driver',
    ),
    Tab(
      text: 'Shipment',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabslist.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: bluecolor,
          elevation: 0.0,
          brightness: Brightness.dark,
          title: Text('Driver Details'),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: Container(
          color: bgcolor,
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              SizedBox(height: 8),
              Container(
                height: 50,
                child: TabBar(
                  automaticIndicatorColorAdjustment: true,
                  indicatorColor: orangecolor,
                  labelColor: bluecolor,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  unselectedLabelColor: Colors.grey,
                  tabs: tabslist,
                ),
              ),
              // SizedBox(
              //   height: 8,
              // ),
              Expanded(
                child: Container(
                  child: TabBarView(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 24),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'SYS ID',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Created TIme Stamp',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Driver ID',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Driver Name',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Vechile Reg No',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      ///////////////////
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(8),
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 24),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Airlilne / Flight*',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Flight Date*',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'MAWB*',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Exp Gr.Wgt/Ch.Wgh*',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Exp Pcs',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Country / AOD*',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'SHC1*,SHC2,SHC#',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                  Row(
                                    children: [
                                      Text(
                                        'Commodity',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        '123456789',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 18),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        child: Ink(
                          child: InkWell(
                            onTap: () {
                              Timer(Duration(milliseconds: 100), () {
                                Navigator.pop(context);
                              });
                            },
                            splashColor: Colors.grey.withOpacity(0.5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Center(
                                child: Text(
                                  'Back',
                                  style: TextStyle(
                                    color: bluecolor,
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
                    Expanded(
                      child: Material(
                        color: yellowcolor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                        child: Ink(
                          child: InkWell(
                            onTap: () {
                              Timer(Duration(milliseconds: 100), () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Booking();
                                }));
                              });
                            },
                            splashColor: Colors.white.withOpacity(0.5),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: yellowcolor),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              child: Center(
                                child: Text(
                                  'Book',
                                  style: TextStyle(
                                    color: bluecolor,
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

              SizedBox(height: 60)
            ],
          ),
        ),
      ),
    );
  }
}
