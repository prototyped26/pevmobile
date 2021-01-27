import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';

import 'components/menu_components/menu_card_content.dart';
import 'components/menu_components/menu_card_icon.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key key,
    this.color,
    this.height,
    this.mTag,
    this.title,
    this.subTitle,
    this.iconData,
    this.iconColor,
    this.backgroundColor,
    this.route,
    this.width,
    this.titleColor,
    this.subTitleColor,
    this.iHeight,
    this.iWidth,
    this.mImage,
    this.radius,
  }) : super(key: key);

  final Color color;
  final double height;
  final double width;
  final String mTag;
  final String title;
  final String subTitle;
  final IconData iconData;
  final Color iconColor;
  final Color backgroundColor;
  final String route;

  final Color titleColor;
  final Color subTitleColor;
  final double iHeight;
  final double iWidth;
  final String mImage;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(route ?? ''),
      child: Hero(
        tag: mTag ?? 'hero',
        child: Container(
          height: height ?? 80,
          width: width ?? 300,
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color ?? Colors.white),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontal(size: 15)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: MenuCardIcon(
                    iconData: iconData,
                    backgroundColor: backgroundColor,
                    iconColor: iconColor,
                    height: iHeight,
                    width: iWidth,
                    image: mImage,
                  ),
                ),
                SpacerWidth(size: 12),
                MenuCardContent(
                  title: title,
                  subTitle: subTitle,
                  titleColor: titleColor,
                  subTitleColor: subTitleColor,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
