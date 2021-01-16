import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';

class InfosMenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                route: '/news',
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
                      subTitle: 'de formations',
                    )),
                    SpacerWidth(size: 15),
                    Expanded(
                        child: InfosMenuCard2(
                      title: 'Vaccins',
                    )),
                  ],
                ),
              ),
              InfosMenuCard(
                title: 'Partenaires',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InfosMenuCard2 extends StatelessWidget {
  const InfosMenuCard2({
    Key key,
    this.title,
    this.subTitle,
    this.image,
    this.height,
    this.width,
    this.route,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  final double height;
  final double width;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 180,
      width: width ?? 170,
      margin: EdgeInsets.only(top: top(size: 25)),
      padding: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                kPrimaryColor,
                kPrimaryColor,
                kPrimaryColor,
                kPrimaryColor,
              ])),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                image ?? 'assets/images/news.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SpacerHeight(size: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? 'Actualités',
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize(size: 18)),
              ),
              Text(
                subTitle ?? 'En savoir plus',
                softWrap: true,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize(size: 14)),
              ),
            ],
          ),
          SpacerHeight(size: 2),
        ],
      ),
    );
  }
}

class InfosMenuCard extends StatelessWidget {
  const InfosMenuCard({
    Key key,
    this.title,
    this.subTitle,
    this.image,
    this.height,
    this.width,
    this.route,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;
  final double height;
  final double width;
  final String route;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(route ?? ''),
      child: Container(
        height: height ?? 150,
        width: width ?? 350,
        margin: EdgeInsets.only(top: top(size: 25)),
        padding: EdgeInsets.only(left: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  kPrimaryColor,
                  kPrimaryColor,
                  kPrimaryColor,
                  kPrimaryColor,
                ])),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title ?? 'Actualités',
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize(size: 18)),
                ),
                Text(
                  subTitle ?? 'En savoir plus',
                  softWrap: true,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize(size: 14)),
                ),
              ],
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  image ?? 'assets/images/news.png',
                  fit: BoxFit.cover,
                  height: 150,
                  scale: 0.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
