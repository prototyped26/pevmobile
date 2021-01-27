import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/widgets/cards/partners_card.dart';

class VaccinsViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
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
              'Vaccins',
              softWrap: true,
              style: TextStyle(fontSize: fontSize(size: 19)),
            ),
            centerTitle: true,
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Container(
            margin: EdgeInsets.only(top: 35),
            child: ListView(
              children: [
                PartnersCard(
                  route: '/infos/vaccins-details',
                  title: 'BCG',
                  logo: 'assets/images/vacIcon.png',
                  bigger: true,
                ),
                PartnersCard(
                  title: 'PENTA 1',
                  logo: 'assets/images/vacIcon.png',
                  bigger: true,
                ),
                PartnersCard(
                  title: 'POLIO 1',
                  logo: 'assets/images/vacIcon.png',
                  bigger: true,
                ),
                PartnersCard(
                  title: 'VAR',
                  logo: 'assets/images/vacIcon.png',
                  bigger: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
