import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gmrui/booking%20details.dart';
import 'package:page_transition/page_transition.dart';

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  static const bluecolor = Color(0xff123978);
  static const yellowcolor = Color(0xffF7A83C);
  static const bgcolor = Color(0xffF5F5F6);
  static const orangecolor = Color(0xffF57211);
  late BuildContext alertcontext;

  showAlertDialog(BuildContext context) {
    // set up the buttons
    // Widget cancelButton = TextButton(
    //   child: Text("Cancel"),
    //   onPressed: () {},
    // );
    // Widget continueButton = TextButton(
    //   child: Text("Continue"),
    //   onPressed: () {},
    // );
    Widget progress = Column(
      children: [
        Container(
          height: 100,
          margin: EdgeInsets.all(8),
          // width: 100,
          child: Center(
            child: CircularProgressIndicator(
              color: bluecolor,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8),
          child: Text(
            'Fetching Details ...',
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
          ),
        )
      ],
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("AlertDialog"),

      actions: [progress],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        alertcontext = context;
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bluecolor,
        elevation: 0.0,
        brightness: Brightness.dark,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 8),
            child: Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(),
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Container(
            // height: MediaQuery.of(context).size.height -
            //     kToolbarHeight -
            //     MediaQuery.of(context).padding.top -
            //     MediaQuery.of(context).padding.bottom -
            //     56,
            // width: MediaQuery.of(context).size.width,
            color: bgcolor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 140,
                      width: double.infinity,
                      color: bluecolor,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Hello John Doe',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Far N Par (India) Private Limited',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 18,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topCenter,
                      padding:
                          new EdgeInsets.only(top: 90, right: 10.0, left: 10.0),
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
                              '₹  27,76,000',
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
                              'PDA Account Balance',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: new EdgeInsets.only(right: 20.0, left: 20.0),
                      child: Text(
                        'Book Time Slot',
                        style: TextStyle(
                          color: bluecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom: 8, top: 8, left: 20, right: 20),
                      // constraints: BoxConstraints(minHeight: 38, maxHeight: 78),
                      child: new TextField(
                        // autocorrect: false,

                        enableSuggestions: false,
                        textInputAction: TextInputAction.done,
                        autofocus: false,

                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(30),
                        ],
                        cursorColor: bluecolor,
                        decoration: new InputDecoration(
                          enabledBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: new BorderSide(
                                  color: bluecolor.withOpacity(0.5))),
                          disabledBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: new BorderSide(
                                  color: bluecolor.withOpacity(0.2))),
                          focusedBorder: new OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: new BorderSide(
                                color: bluecolor.withOpacity(0.5),
                              )),
                          hintText: ' Enter AWB / Shipping Bill No',
                          hintStyle: TextStyle(
                            color: bluecolor.withOpacity(0.5),
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                          contentPadding: EdgeInsets.fromLTRB(20, 5, 5, 20),
                          // helperText:
                          //     'Keep it short, this is just a demo.',
                          // labelText: 'Enter ',
                          // labelStyle: TextStyle(
                          //     color: textcolor, fontWeight: FontWeight.w400),
                          prefixText: ' ',
                          suffixIcon: GestureDetector(
                            onTap: () async {
                              FocusManager.instance.primaryFocus?.unfocus();
                              Navigator.pop(alertcontext);
                              showAlertDialog(context);
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 200),
                                  child: BookingDetails(),
                                ),
                              );
                            },
                            child: Icon(
                              Icons.search,
                              color: bluecolor,
                            ),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                        //controller: controller1,
                        // onChanged: (value) {
                        //   setState(() {
                        //     selectedcomment = value;
                        //     print('comment = $selectedcomment');
                        //   });
                        // },
                        onSubmitted: (value) async {
                          FocusManager.instance.primaryFocus?.unfocus();
                          showAlertDialog(context);
                          Future.delayed(Duration(seconds: 2)).then((value) {
                            Navigator.pop(alertcontext);
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 200),
                                child: BookingDetails(),
                              ),
                            );
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      padding: new EdgeInsets.only(right: 20.0, left: 20.0),
                      child: Text(
                        'My Orders',
                        style: TextStyle(
                          color: bluecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Container(
                      padding: new EdgeInsets.only(right: 20.0, left: 20.0),
                      child: Text(
                        'Today',
                        style: TextStyle(
                          color: orangecolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      padding: new EdgeInsets.only(right: 20.0, left: 20.0),
                      child: SizedBox(
                        width: 30,
                        child: Divider(
                          color: orangecolor,
                          height: 1,
                          thickness: 2,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    // Container(
                    //   height: MediaQuery.of(context).size.height / 3.5,
                    //   width: double.infinity,
                    //   padding: new EdgeInsets.only(left: 20.0),
                    //   child:
                  ],
                ),
                Container(
                  height: 230,
                  margin: EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Card(
                                elevation: 5.0,
                                child: Container(
                                  width: 160,
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'AirWay Bill No',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 12,
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                            Text(
                                              '312 768712345',
                                              style: TextStyle(
                                                color: bluecolor,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(height: 18),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'HYD ',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 24,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.flight_takeoff,
                                                      color: orangecolor,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  ' DEL',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 24,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 18),
                                            Row(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      '768712',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      'Flight No.',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 10,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Text(
                                                  'IndiGo',
                                                  style: TextStyle(
                                                    color: bluecolor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 6,
                                                ),
                                                Icon(
                                                  Icons.flight_sharp,
                                                  color: bluecolor,
                                                  size: 20,
                                                ),
                                              ],
                                            ),
                                            // SizedBox(
                                            //   width: 12,
                                            // ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          color: yellowcolor,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 8),
                                        child: Row(
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '06:00 - 08:00',
                                                  style: TextStyle(
                                                    color: bluecolor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                Text(
                                                  'Time Slot',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Dock $index',
                                                  style: TextStyle(
                                                    color: bluecolor,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                SizedBox(height: 4),
                                                Text(
                                                  'Dock',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 60)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
