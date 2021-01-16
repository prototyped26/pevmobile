import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/cards/news_card.dart';
import 'package:pevmobile/widgets/forms/form_widget.dart';

class NewsViews extends StatefulWidget {
  @override
  _NewsViewsState createState() => _NewsViewsState();
}

class _NewsViewsState extends State<NewsViews>
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
        backgroundColor: Colors.grey[200],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            leading: IconButton(
              icon: Icon(
                SimpleLineIcons.arrow_left,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Actualités',
              softWrap: true,
              style: TextStyle(fontSize: fontSize(size: 19)),
            ),
            centerTitle: true,
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Hero(
              tag: 'heroes',
              child: Container(
                margin: EdgeInsets.only(top: top(size: 40)),
                child: Column(
                  children: [
                    BTextFormField(
                      hintText: 'Recherchez',
                      suffixIcon: Icon(Feather.search),
                    ),
                    SpacerHeight(
                      size: 25,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: horizontal(size: 15)),
                      child: TabBar(
                        controller: mTabController,
                        labelColor: kPrimaryColor,
                        indicatorColor: kPrimaryColor,
                        indicator: UnderlineTabIndicator(
                          borderSide:
                              BorderSide(color: kPrimaryColor, width: 3.5),
                          insets: EdgeInsets.symmetric(horizontal: 26),
                        ),
                        labelStyle: TextStyle(
                          fontSize: fontSize(size: 15),
                          fontFamily: 'Kufam',
                          fontWeight: FontWeight.w500,
                        ),
                        unselectedLabelColor: kTextColor,
                        tabs: [
                          Tab(
                            text: 'À la Une',
                          ),
                          Tab(
                            text: 'Le PEV',
                          ),
                          Tab(
                            text: 'Autres',
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: mTabController,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: top(size: 10)),
                            child: ListView(
                              padding: EdgeInsets.symmetric(
                                  horizontal: horizontal(size: 18)),
                              shrinkWrap: true,
                              children: [
                                ...List.generate(
                                    10,
                                    (index) => NewsCard(
                                          mTag: 'sage$index',
                                          color: Colors.white,
                                        ))
                              ],
                            ),
                          ),
                          Container(
                            child: Text(' view2'),
                          ),
                          Container(
                            child: Text(' view3'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )),
        ));
  }
}
