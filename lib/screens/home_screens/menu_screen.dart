import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/widgets/cards/menu_card.dart';

class HomeScreenMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
          body: SizedBox(
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(gradient: kPrimaryGradient),
          child: Stack(
            children: [
              Opacity(
                opacity: 0.05,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg-menu.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Opacity(
                opacity: 0.15,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/imageIcon.png'),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: vertical(size: 45)),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Text(
                              'PEV',
                              softWrap: true,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: fontSize(size: 17),
                                  fontWeight: FontWeight.w500),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: horizontal(size: 130)),
                              child: Text(
                                'Programme Élargi de Vaccination',
                                textAlign: TextAlign.center,
                                softWrap: true,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: fontSize(size: 12),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.only(top: top(size: 350)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MenuCard(
                                  mTag: 'cartes',
                                ),
                                MenuCard(
                                  mTag: 'vaccins',
                                  iconData: Icons.child_care,
                                  title: 'Vaccinations',
                                  subTitle: 'Faites un tracking',
                                ),
                                MenuCard(
                                  mTag: 'infos',
                                  iconData: Feather.book_open,
                                  title: 'Nos informations',
                                  subTitle: 'Actualités et partenaires',
                                  route: '/home-infos',
                                ),
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
