import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';

class PartnerCardContent extends StatelessWidget {
  const PartnerCardContent({
    Key key,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.only(right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? 'OMS',
                softWrap: true,
                style: TextStyle(
                    fontSize: fontSize(size: 16),
                    letterSpacing: 0.2,
                    color: kPrimaryBbnColor,
                    fontWeight: FontWeight.w500),
              ),
              SpacerHeight(size: 5),
              Text(
                subTitle ?? placeholder,
                softWrap: true,
                textAlign: TextAlign.justify,
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                style: TextStyle(letterSpacing: 0.2),
              ),
              SpacerHeight(size: 5),
              Text(
                'Lire plus',
                softWrap: true,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    letterSpacing: 0.2,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor),
              ),
            ],
          )),
    );
  }
}
