import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MyCalendar extends StatefulWidget {
  MyCalendar({Key? key}) : super(key: key);

  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  static const bluecolor = Color(0xff123978);
  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

/// State for MyApp
class MyAppState extends State<MyApp> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';
  String selectedDate = '';
  String selectedDock = '';
  List dateslist = [
    'Date',
    'one',
    'two',
    'three',
  ];
  List dockslist = [
    'All Docks',
    'Dock 1',
    'Dock 2',
    'Dock 3',
  ];
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
    Widget progress = Container(
      height: 100,
      // width: 100,
      child: Center(
        child: CircularProgressIndicator(
            // color: darkredColor,
            ),
      ),
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("AlertDialog"),
      content: Container(
        height: 100,
        width: double.maxFinite,
        // decoration: BoxDecoration(
        //   color: Colors.white,
        // ),
        child: Container(
          child: _getCustomizedDatePicker(
            [DateTime.now()],
            ThemeData.light(),
          ),
        ),
      ),
      actions: [
        //progress
        //cancelButton,
        //continueButton,
      ],
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

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      if (args.value is PickerDateRange) {
        _range =
            DateFormat('dd/MM/yyyy').format(args.value.startDate).toString() +
                ' - ' +
                DateFormat('dd/MM/yyyy')
                    .format(args.value.endDate ?? args.value.startDate)
                    .toString();
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  SfDateRangePicker _getCustomizedDatePicker(
      List<DateTime> specialDates, ThemeData theme) {
    final bool isDark = theme != null &&
        theme.brightness != null &&
        theme.brightness == Brightness.dark;

    final Color monthCellBackground =
        isDark ? const Color(0xFF232731) : const Color(0xfff7f4ff);
    final Color indicatorColor = isDark ? const Color(0xFF5CFFB7) : orangecolor;
    final Color highlightColor = isDark ? const Color(0xFF5CFFB7) : bluecolor;
    final Color cellTextColor =
        isDark ? const Color(0xFFDFD4FF) : const Color(0xFF130438);

    return SfDateRangePicker(
      onSelectionChanged: _onSelectionChanged,
      selectionShape: DateRangePickerSelectionShape.circle,
      selectionColor: highlightColor,
      allowViewNavigation: false,
      initialSelectedDate: DateTime.now(),
      selectionTextStyle:
          TextStyle(color: isDark ? Colors.black : Colors.white, fontSize: 14),
      minDate: DateTime.now().add(const Duration(days: -100)),
      maxDate: DateTime.now().add(const Duration(days: 100)),
      headerStyle: DateRangePickerHeaderStyle(
        textAlign: TextAlign.center,
        textStyle: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
      monthCellStyle: DateRangePickerMonthCellStyle(
        cellDecoration: _MonthCellDecoration(
            borderColor: null,
            backgroundColor: Colors.white,
            showIndicator: false,
            indicatorColor: indicatorColor),
        todayCellDecoration: _MonthCellDecoration(
            borderColor: highlightColor,
            backgroundColor: Colors.white,
            showIndicator: false,
            indicatorColor: indicatorColor),
        specialDatesDecoration: _MonthCellDecoration(
            borderColor: null,
            backgroundColor: Colors.white,
            showIndicator: true,
            indicatorColor: indicatorColor),
        disabledDatesTextStyle: TextStyle(
          color: isDark ? const Color(0xFF666479) : const Color(0xffe2d7fe),
        ),
        // weekendTextStyle: TextStyle(
        //   color: highlightColor,
        // ),
        textStyle: TextStyle(color: cellTextColor, fontSize: 14),
        specialDatesTextStyle: TextStyle(color: cellTextColor, fontSize: 14),
        todayTextStyle: TextStyle(color: highlightColor, fontSize: 14),
      ),
      yearCellStyle: DateRangePickerYearCellStyle(
        todayTextStyle: TextStyle(color: highlightColor, fontSize: 14),
        textStyle: TextStyle(color: cellTextColor, fontSize: 14),
        disabledDatesTextStyle: TextStyle(
            color: isDark ? const Color(0xFF666479) : const Color(0xffe2d7fe)),
        leadingDatesTextStyle:
            TextStyle(color: cellTextColor.withOpacity(0.5), fontSize: 14),
      ),
      showNavigationArrow: true,
      todayHighlightColor: highlightColor,
      monthViewSettings: DateRangePickerMonthViewSettings(
          firstDayOfWeek: 1,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
            textStyle: TextStyle(
                fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          dayFormat: 'EEE',
          showTrailingAndLeadingDates: false,
          specialDates: specialDates,
          numberOfWeeksInView: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    selectedDate = dateslist[0];
    selectedDock = dockslist[0];
    const bluecolor = Color(0xff123978);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Bookings'),
          backgroundColor: bluecolor,
          elevation: 0.0,
          brightness: Brightness.dark,
          actions: [
            Container(
              margin: EdgeInsets.only(right: 8),
              child: Icon(Icons.notifications),
            ),
          ],
          bottom: TabBar(
            automaticIndicatorColorAdjustment: true,
            // indicator: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   color: orangecolor,
            // ),
            indicatorColor: yellowcolor,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3.0,
            indicatorPadding: EdgeInsets.all(4),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            // isScrollable: true,
            tabs: [
              Tab(
                text: 'PHARMA ZONE',
              ),
              Tab(
                text: ' NON-PHARMA ZONE',
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        body: Container(
          margin: EdgeInsets.only(bottom: 60),
          color: bgcolor,
          child: TabBarView(children: [
            Container(
              color: bgcolor,
              padding: EdgeInsets.all(8),
              //margin: EdgeInsets.all(8),
              child: Column(
                children: [
                  // Container(
                  //   margin: EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  //   child: Row(
                  //     //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Expanded(
                  //         flex: 1,
                  //         child: Container(
                  //           child: Card(
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(15.0),
                  //             ),
                  //             elevation: 4.0,
                  //             child: ButtonTheme(
                  //               alignedDropdown: true,
                  //               child: DropdownButton(
                  //                 isExpanded: true,
                  //                 value: selectedDate,
                  //                 underline: SizedBox(),
                  //                 onChanged: (value) async {
                  //                   // selectedDistrict = value;
                  //                   // await getdataforgraph();
                  //                   // setState(() {});
                  //                 },
                  //                 items: dateslist.map(
                  //                   (item) {
                  //                     return DropdownMenuItem(
                  //                       value: item,
                  //                       child: Container(
                  //                         margin: EdgeInsets.only(
                  //                             left: 8, right: 8),
                  //                         child: Text(
                  //                           item,
                  //                           maxLines: 1,
                  //                           style: TextStyle(
                  //                             color: Colors.black,
                  //                           ),
                  //                         ),
                  //                       ),
                  //                     );
                  //                   },
                  //                 ).toList(),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       SizedBox(width: 8),
                  // Expanded(
                  //   flex: 1,
                  //   child: Container(
                  //     child: Card(
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(15.0),
                  //       ),
                  //       elevation: 4.0,
                  //       child: ButtonTheme(
                  //         alignedDropdown: true,
                  //         child: DropdownButton(
                  //           isExpanded: true,
                  //           value: selectedDock,
                  //           underline: SizedBox(),
                  //           onChanged: (value) async {
                  //             // selectedMonth = value;
                  //             // selectedMonthIndex =
                  //             //     await getmonthindex(value);

                  //             // await getdataforgraph();
                  //             // print(
                  //             //     'month index = ${getmonthindex(value)}');
                  //             // setState(() {});
                  //           },
                  //           items: dockslist.map(
                  //             (item) {
                  //               return DropdownMenuItem(
                  //                 value: item,
                  //                 child: Container(
                  //                   margin: EdgeInsets.only(left: 8),
                  //                   child: Text(
                  //                     item,
                  //                     maxLines: 1,
                  //                     style: TextStyle(
                  //                       color: Colors.black,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               );
                  //             },
                  //           ).toList(),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  //     ],
                  //   ),
                  // ),
                  ////////////////////////////////////////////////
                  Container(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Card(
                            color: Colors.white,
                            child: ExpansionTile(
                              title: Text(
                                'Date ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              collapsedTextColor: Colors.black,
                              collapsedIconColor: Colors.black,
                              iconColor: Colors.black,
                              textColor: Colors.black,
                              children: [
                                SizedBox(
                                  height: 150,
                                  child: Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    child: Card(
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        margin: EdgeInsets.all(8),
                                        child: Container(
                                          child: _getCustomizedDatePicker(
                                            [DateTime.now()],
                                            ThemeData.light(),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(
                            elevation: 3,
                            child: Container(
                              height: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.0),
                                color: Colors.white,
                              ),
                              child: ButtonTheme(
                                //  buttonColor: Colors.white,

                                alignedDropdown: true,
                                child: DropdownButton(
                                  iconDisabledColor: Colors.black,
                                  iconEnabledColor: Colors.black,
                                  isExpanded: true,
                                  dropdownColor: Colors.white,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  value: selectedDock,
                                  underline: SizedBox(),
                                  onChanged: (value) async {
                                    // selectedMonth = value;
                                    // selectedMonthIndex =
                                    //     await getmonthindex(value);

                                    // await getdataforgraph();
                                    // print(
                                    //     'month index = ${getmonthindex(value)}');
                                    // setState(() {});
                                  },
                                  items: dockslist.map(
                                    (item) {
                                      return DropdownMenuItem(
                                        value: item,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 8),
                                          child: Text(
                                            item,
                                            maxLines: 1,
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ).toList(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Expanded(
                  //         child: Container(
                  //           child: Center(
                  //             child: GestureDetector(
                  //               onTap: () {
                  //                 showAlertDialog(context);
                  //               },
                  //               child: Text('Date'),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Container(
                  //           child: Center(child: Text('Date')),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  SizedBox(height: 18),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 120,

                          // margin: EdgeInsets.all(8),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MON',
                                      style: TextStyle(
                                        color: index.isEven
                                            ? bluecolor
                                            : orangecolor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      '26 Jul',
                                      style: TextStyle(
                                        color: index.isEven
                                            ? bluecolor
                                            : orangecolor,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Card(
                                  //elevation: 4.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                    // decoration: BoxDecoration(
                                    //   color: Colors.white,
                                    //   borderRadius: BorderRadius.all(
                                    //     Radius.circular(15),
                                    //   ),
                                    // ),
                                    // padding: EdgeInsets.symmetric(vertical: 8),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 10,
                                          margin: EdgeInsets.only(right: 8),
                                          decoration: BoxDecoration(
                                            color: index.isEven
                                                ? bluecolor
                                                : orangecolor,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(15),
                                              bottomLeft: Radius.circular(15),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Row(
                                            children: [
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '1:00 PM',
                                                    style: TextStyle(
                                                      color: index.isEven
                                                          ? bluecolor
                                                          : orangecolor,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Text(
                                                    'LDE - 004',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(width: 18),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(height: 8),
                                                  Text(
                                                    'Agent',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyText1
                                                        ?.copyWith(
                                                            color: bluecolor),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            2,
                                                    child: Text(
                                                      'Far N Par (India) private Limited',
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,

                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyText2
                                                          ?.copyWith(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                      // TextStyle(
                                                      //   color: Colors.black,
                                                      //   fontWeight: FontWeight.bold,
                                                      // ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 4),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'VCT         ',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            ?.copyWith(
                                                                fontSize: 10),
                                                      ),
                                                      SizedBox(width: 8),
                                                      Text(
                                                        '123456789',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            ?.copyWith(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      SizedBox(width: 8),
                                                    ],
                                                  ),
                                                  SizedBox(height: 4),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Truck No',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            ?.copyWith(
                                                                fontSize: 10),
                                                      ),
                                                      SizedBox(width: 8),
                                                      Text(
                                                        '123456789',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyText2
                                                            ?.copyWith(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                      ),
                                                      SizedBox(width: 8),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 120,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    child: Card(
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.all(8),
                        child: Container(
                          child: _getCustomizedDatePicker(
                            [DateTime.now()],
                            ThemeData.light(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // if (kIsWeb) Text('im on web')
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

/// [_MonthCellDecoration] used to customize the month cell
/// background of [SfDateRangePicker].
/// [backgroundColor] property used to draw the fill color the month cell
/// [borderColor] property used to draw the border to highlight the
/// today month cell.
/// [showIndicator] property used to decide whether the cell
/// have indicator or not.
/// it is enabled then draw the circle on right top corner
/// with [indicatorColor].
class _MonthCellDecoration extends Decoration {
  const _MonthCellDecoration(
      {this.borderColor,
      this.backgroundColor,
      required this.showIndicator,
      this.indicatorColor});

  final Color? borderColor;
  final Color? backgroundColor;
  final bool showIndicator;
  final Color? indicatorColor;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MonthCellDecorationPainter(
        borderColor: borderColor,
        backgroundColor: backgroundColor,
        showIndicator: showIndicator,
        indicatorColor: indicatorColor);
  }
}

/// [_MonthCellDecorationPainter] used to paint month cell decoration.
class _MonthCellDecorationPainter extends BoxPainter {
  _MonthCellDecorationPainter(
      {this.borderColor,
      this.backgroundColor,
      required this.showIndicator,
      this.indicatorColor});

  final Color? borderColor;
  final Color? backgroundColor;
  final bool showIndicator;
  final Color? indicatorColor;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final Rect bounds = offset & configuration.size!;
    _drawDecoration(canvas, bounds);
  }

  void _drawDecoration(Canvas canvas, Rect bounds) {
    final Paint paint = Paint()..color = backgroundColor!;
    canvas.drawRRect(
        RRect.fromRectAndRadius(bounds, const Radius.circular(5)), paint);
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    if (borderColor != null) {
      paint.color = borderColor!;
      canvas.drawRRect(
          RRect.fromRectAndRadius(bounds, const Radius.circular(5)), paint);
    }

    if (showIndicator) {
      paint.color = indicatorColor!;
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(Offset(bounds.right - 6, bounds.top + 6), 2.5, paint);
    }
  }
}
