import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/cards/components/news_components/news_card_content.dart';
import 'package:pevmobile/widgets/cards/components/news_components/news_card_icon.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    Key key,
    this.color,
    this.height,
    this.mTag,
    this.route,
    this.title,
    this.subTitle,
    this.iconData,
    this.iconColor,
    this.backgroundColor,
  }) : super(key: key);

  final Color color;
  final double height;
  final String mTag;
  final String route;
  final String title;
  final String subTitle;
  final IconData iconData;
  final Color iconColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.of(context).pushNamed(route ?? ''),
        child: Container(
          height: height ?? 120,
          width: width(size: 330),
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: color ?? Colors.grey[200]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontal(size: 15)),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: NewsCardIcon(
                    iconData: iconData,
                    iconColor: iconColor,
                    backgroundColor: backgroundColor,
                  ),
                ),
                SpacerWidth(size: 12),
                Expanded(
                  child: NewsCardContent(
                    title: title ?? 'Campagne de sensibilisation',
                    subTitle: subTitle ??
                        "Free Download News SVG vector file in monocolor and multicolor type for Sketch or Illustrator from News Vectors svg vector collection. News Vectors SVG vector illustration graphic art design format.",
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
