import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/cards/components/menu_components/menu_card_icon.dart';
import 'package:pevmobile/widgets/cards/menu_card.dart';
import 'package:pevmobile/widgets/tabbars/tab_menu.dart';

class DashboardView extends StatefulWidget {
  @override
  _DashboardViewState createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
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

class VaccinCard extends StatelessWidget {
  const VaccinCard({
    Key key,
    this.name,
    this.years,
    this.weight,
    this.image,
  }) : super(key: key);

  final String name;
  final String years;
  final String weight;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 150,
      decoration: BoxDecoration(
          gradient: kPrimaryGradient, borderRadius: BorderRadius.circular(20)),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.07,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg-menu.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: horizontal(size: 25)),
            child: Stack(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/home.png'),
                      minRadius: 40,
                      maxRadius: 40,
                    ),
                    SpacerWidth(size: 20),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name ?? 'Kévin MESSI',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize(size: 16)),
                        ),
                        Text(years ?? '6 ans',
                            softWrap: true,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: fontSize(size: 16))),
                        Text(
                          weight ?? '17 kg',
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize(size: 16)),
                        )
                      ],
                    ))
                  ],
                ),
                Positioned(
                  bottom: 15,
                  right: 4,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    child: Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
