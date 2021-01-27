import 'package:bubbled_navigation_bar/bubbled_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/views/vaccins_views/account_view.dart';
import 'package:pevmobile/views/vaccins_views/dashboard_view.dart';
import 'package:pevmobile/views/vaccins_views/follows_view.dart';
import 'package:pevmobile/views/vaccins_views/notifications_view.dart';

class BottomBarView extends StatefulWidget {
  BottomBarView({Key key}) : super(key: key);

  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  PageController _pageController;
  int mIndex = 0;
  final List<Widget> _mScreens = [
    DashboardView(),
    FollowsView(),
    AccountView()
  ];

  @override
  void initState() {
    mIndex = 0;
    _pageController =
        PageController(initialPage: 0, keepPage: false, viewportFraction: 1.0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        pageSnapping: true,
        physics: NeverScrollableScrollPhysics(),
        children: _mScreens,
        onPageChanged: (index) {
          setState(() {
            mIndex = index;
          });
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 50), curve: Curves.easeInCubic);
        },
      ),
      bottomNavigationBar: BubbledNavigationBar(
        defaultBubbleColor: kPrimaryColor,
        onTap: (index) {
          // handle tap
        },
        items: <BubbledNavigationBarItem>[
          BubbledNavigationBarItem(
            bubbleColor: kPrimaryColor,
            icon: Icon(Icons.dashboard_outlined, size: 30, color: kTextColor),
            activeIcon:
                Icon(Icons.dashboard_customize, size: 30, color: Colors.white),
            title: Text(
              'Tableau de Bord',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          BubbledNavigationBarItem(
            icon: Stack(
              children: [
                Positioned(
                  right: 4,
                  top: 1,
                  child: Container(
                    height: 16,
                    width: 16,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      color: Colors.red,
                    ),
                    child: Text(
                      '8',
                      softWrap: true,
                      style: TextStyle(color: Colors.white, fontSize: 9),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Icon(SimpleLineIcons.bell, size: 30, color: kTextColor),
                ),
              ],
            ),
            activeIcon:
                Icon(SimpleLineIcons.bell, size: 30, color: Colors.white),
            title: Text(
              'Notifications',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
          BubbledNavigationBarItem(
            icon: Icon(SimpleLineIcons.user, size: 30, color: kTextColor),
            activeIcon:
                Icon(SimpleLineIcons.user, size: 30, color: Colors.white),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
