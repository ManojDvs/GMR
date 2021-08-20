import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gmrui/booking%20success.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class TimeSlotBooking extends StatefulWidget {
  TimeSlotBooking({Key? key}) : super(key: key);

  @override
  _TimeSlotBookingState createState() => _TimeSlotBookingState();
}

class _TimeSlotBookingState extends State<TimeSlotBooking> {
  static const bluecolor = Color(0xff123978);
  static const yellowcolor = Color(0xffF7A83C);
  static const bgcolor = Color(0xffF5F5F6);
  static const orangecolor = Color(0xffF57211);
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';
  int timecolor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bluecolor,
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text('Book Time Slot'),
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
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
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
                    SizedBox(height: 8),
                    Container(
                      margin: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      child: Card(
                        elevation: 5.0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4))),
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                          child: Row(
                            children: [
                              Text(
                                'Type of Consignment : ',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Pharmaceutical',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Container(
                      margin: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      child: Text(
                        'Select Time Slot :',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      margin: EdgeInsets.only(
                        left: 12,
                        right: 12,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                                border: Border.all(color: yellowcolor)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: timecolor == 0
                                            ? yellowcolor
                                            : Colors.transparent,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(4),
                                        ),
                                        border: Border.all(color: yellowcolor)),
                                    child: Center(
                                      child: Text(
                                        'Before 6 am',
                                        style: TextStyle(
                                          color: timecolor == 0
                                              ? Colors.white
                                              : Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      '6 am to 12 pm',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      '12pm to 6pm',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 6),
                                Expanded(
                                  child: Container(
                                    child: Text(
                                      'After 6pm',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 18),
                    Center(
                      child: Container(
                        margin: EdgeInsets.all(4),
                        padding: EdgeInsets.all(4),
                        child: Wrap(
                          children: List.generate(
                            20,
                            (index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(4))),
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(4),
                                child: Text('00:00 am'),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
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
                                return BookingSuccess();
                              }));
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
                                'Book Slot',
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
            SizedBox(height: 60),
          ],
        ),
      ),
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
    print('selected date = $_selectedDate');
    print('date count = $_dateCount');
    print('range = $_range $_rangeCount');
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
      selectionTextStyle:
          TextStyle(color: isDark ? Colors.black : Colors.white, fontSize: 14),
      minDate: DateTime.now().add(const Duration(days: -200)),
      maxDate: DateTime.now().add(const Duration(days: 500)),
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
          todayTextStyle: TextStyle(color: highlightColor, fontSize: 14)),
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
