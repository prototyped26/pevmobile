import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/cards/infos_card.dart';

class InfosMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: left(size: 19)),
            child: IconButton(
              icon: Icon(
                SimpleLineIcons.arrow_left,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          title: Text(
            'Nos Informations',
            softWrap: true,
            style: TextStyle(fontSize: fontSize(size: 19)),
          ),
          centerTitle: true,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          child: Column(
            children: [
              SpacerPercentHeight(
                size: 0.02,
              ),
              InfosMenuCard(
                route: '/infos/news',
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: horizontal(size: 28)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: InfosMenuCard2(
                      title: 'Cartes',
                      image: 'assets/images/map.png',
                      subTitle: 'de formations',
                    )),
                    SpacerWidth(size: 15),
                    Expanded(
                        child: InfosMenuCard2(
                      title: 'Vaccins',
                      image: 'assets/images/vaccin.png',
                      route: '/infos/vaccins',
                    )),
                  ],
                ),
              ),
              InfosMenuCard(
                title: 'Partenaires',
                image: 'assets/images/collaboration.png',
                route: '/infos/partners',
              )
            ],
          ),
        ),
      ),
    );
  }
}
