import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pevmobile/helpers/constants.dart';

class NewsCardIcon extends StatelessWidget {
  @override
  const NewsCardIcon({
    Key key,
    this.iconData,
    this.backgroundColor,
    this.iconColor,
  }) : super(key: key);

  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: kPrimaryColor.withOpacity(0.1),
      child: Container(
        height: 90,
        width: 90,
        padding: EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: SvgPicture.asset(
          'assets/svg/news.svg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
