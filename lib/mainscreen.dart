import 'package:flutter/material.dart';
import 'package:gmrui/calendar.dart';
import 'package:gmrui/home.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static const bluecolor = Color(0xff123978);
  static const yellowcolor = Color(0xffF7A83C);
  static const bgcolor = Color(0xffF5F5F6);
  static const orangecolor = Color(0xffF57211);

  int _selectedIndex = 0;
  List<Widget> widgetList = [];
  PageController pageController = PageController();
  PersistentTabController controller = PersistentTabController();
  late BuildContext testcontext;
  @override
  void initState() {
    super.initState();

    widgetList = [MyHome(), MyCalendar()];
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onpagechanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }

  List<PersistentBottomNavBarItem> _navbaritems = [
    PersistentBottomNavBarItem(
      icon: Icon(Icons.home),
      title: "Home",
      activeColorPrimary: bluecolor,
      inactiveColorPrimary: Colors.grey,
      inactiveColorSecondary: orangecolor,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(Icons.calendar_today),
      title: "Calendar",
      activeColorPrimary: bluecolor,
      inactiveColorPrimary: Colors.grey,
      inactiveColorSecondary: orangecolor,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'home',
      //       backgroundColor: Colors.blueAccent,
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_today_rounded),
      //       label: 'Calendar',
      //       backgroundColor: Colors.blueAccent,
      //     ),
      //   ],
      //   //  backgroundColor: darkredColor,
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.grey,
      //   iconSize: 30,
      //   onTap: _onItemTap,
      //   elevation: 5,
      // ),
      body: PersistentTabView(
        context,
        controller: controller,
        screens: widgetList,
        items: _navbaritems,
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        onWillPop: (context) async {
          await showDialog(
            context: context!,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: ElevatedButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },
        selectedTabScreenContext: (context) {
          testcontext = context!;
        },
        //hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
          colorBehindNavBar: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [BoxShadow(blurRadius: 2, color: Colors.grey)],
        ),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style6, // Choose the nav bar style with this property
      ),
      // PageView(
      //   allowImplicitScrolling: true,
      //   physics: new NeverScrollableScrollPhysics(),
      //   controller: pageController,
      //   onPageChanged: onpagechanged,
      //   children: widgetList,
      // ),
    );
  }
}
