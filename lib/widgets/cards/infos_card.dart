import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';

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
      height: height ?? 150,
      width: width ?? 170,
      margin: EdgeInsets.only(top: top(size: 25)),
      padding: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), gradient: kPrimaryGradient),
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
          SpacerHeight(size: 13),
          Padding(
            padding: EdgeInsets.only(right: 45),
            child: Column(
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
