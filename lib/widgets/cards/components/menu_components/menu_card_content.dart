import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';

class MenuCardContent extends StatelessWidget {
  const MenuCardContent({
    Key key,
    this.title,
    this.subTitle,
    this.titleColor,
    this.subTitleColor,
  }) : super(key: key);
  final String title;
  final String subTitle;
  final Color titleColor;
  final Color subTitleColor;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? 'Carte de FOSA',
            softWrap: true,
            style: TextStyle(
                fontSize: fontSize(size: 16),
                letterSpacing: 0.2,
                color: titleColor ?? kPrimaryBbnColor,
                fontWeight: FontWeight.w500),
          ),
          Text(
            subTitle ?? 'Formez-vous',
            softWrap: true,
            style: TextStyle(
                letterSpacing: 0.2, color: subTitleColor ?? kTextColor),
          ),
        ],
      ),
    );
  }
}
