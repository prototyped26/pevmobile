import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/forms/form_widget.dart';
import 'package:pevmobile/widgets/tabbars/tab_menu.dart';

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
              'Actualités',
              softWrap: true,
              style: TextStyle(fontSize: fontSize(size: 19)),
            ),
            centerTitle: true,
          ),
        ),
        body: SizedBox(
          width: double.infinity,
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
                TabMenu(mTabController: mTabController),
                TabMenuView(mTabController: mTabController)
              ],
            ),
          ),
        ));
  }
}
