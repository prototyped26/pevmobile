import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/cards/components/menu_components/menu_card_icon.dart';
import 'package:pevmobile/widgets/tabbars/tab_menu.dart';

import 'dashboard_view.dart';

class FollowsView extends StatefulWidget {
  @override
  _FollowsViewState createState() => _FollowsViewState();
}

class _FollowsViewState extends State<FollowsView>
    with SingleTickerProviderStateMixin {
  TabController mTabController;
  @override
  void initState() {
    mTabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: left(size: 18)),
              child: IconButton(
                icon: Icon(
                  SimpleLineIcons.arrow_left,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            title: Text(
              '',
              softWrap: true,
              style: TextStyle(fontSize: fontSize(size: 19)),
            ),
            centerTitle: true,
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.only(top: top(size: 30)),
            child: Column(
              children: [
                VaccinCard(),
                SpacerHeight(
                  size: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Vaccins',
                        softWrap: true,
                        style: TextStyle(
                            fontSize: fontSize(size: 17),
                            color: Colors.black,
                            fontWeight: FontWeight.w700),
                      ),
                      SpacerWidth(size: 25),
                      MenuCardIcon(
                        backgroundColor: kPrimaryColor,
                        iconData: SimpleLineIcons.calendar,
                        iconColor: Colors.white,
                      )
                    ],
                  ),
                ),
                TabMenu(
                  mTabController: mTabController,
                  mTitleOne: 'Tous',
                  mTitleTwo: 'Faits',
                  mTitleThree: 'À Faire',
                ),
                TabMenuView(
                  mTabController: mTabController,
                  mTabChild1: Container(
                      margin: EdgeInsets.only(top: 8),
                      child: ListView.builder(
                          itemCount: 20,
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                                decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius: BorderRadius.circular(15)),
                                height: 130,
                                width: 220,
                                margin: EdgeInsets.symmetric(
                                    horizontal: 25, vertical: 8),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'À Faire',
                                            softWrap: true,
                                            style: TextStyle(
                                                color: kPrimaryColor,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text('dans 2 jours')
                                        ],
                                      ),
                                    ),
                                    SpacerHeight(size: 6),
                                    Text(
                                      'BCG : Bacillus Calmette-Guérin',
                                      softWrap: true,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 0.72,
                                          fontSize: fontSize(size: 17.5)),
                                    ),
                                    SpacerHeight(size: 7),
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 16),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.location_pin,
                                            color: kTextColor,
                                          ),
                                          SpacerWidth(size: 10),
                                          Text(
                                            'Hôpital de la caisse',
                                            softWrap: true,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: fontSize(size: 15)),
                                          ),
                                          SpacerWidth(size: 90),
                                          Expanded(
                                            child: CircleAvatar(
                                              backgroundImage: AssetImage(
                                                  'assets/images/home.png'),
                                              minRadius: 17,
                                              maxRadius: 17,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ))),
                )
              ],
            ),
          ),
        ));
  }
}
