import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';

class NewsCardContent extends StatelessWidget {
  const NewsCardContent({
    Key key,
    this.title,
    this.subTitle,
  }) : super(key: key);
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Text(
            title ?? 'Carte de FOSA',
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: fontSize(size: 15),
                letterSpacing: 0.3,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
        ),
        SpacerHeight(size: 5),
        Flexible(
          child: Text(
            subTitle ?? 'Formez-vous',
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.justify,
            style: TextStyle(
              letterSpacing: 0.2,
            ),
          ),
        ),
        SpacerHeight(size: 5),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: Container(
                width: 80,
                height: 17,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.2),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 7,
                          color: Colors.grey[200],
                          spreadRadius: 1)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Le PEV',
                  textAlign: TextAlign.center,
                  softWrap: true,
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: fontSize(size: 9)),
                ),
              )),
              Flexible(child: Text('17/01/2021'))
            ],
          ),
        )
      ],
    );
  }
}
