import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:the_void/constants.dart';

import 'package:the_void/pages/mood_tracker.dart';
import 'package:the_void/pages/profile.dart';
import 'package:the_void/pages/write.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          WritePage(),
          MoodTrackerPage(),
          ProfilePage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: (pageIndex) => {
          pageController.animateToPage(
            pageIndex,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut
          )
        },
        activeColor: kLimeColor,
        inactiveColor: kDarkestColor,
        backgroundColor: kMauveColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.create),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mood),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}
