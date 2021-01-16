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
                  child: Card(
                elevation: 0,
                color: kPrimaryColor.withOpacity(0.8),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                child: SizedBox(
                  height: 18,
                  width: 80,
                  child: Center(
                    child: Text(
                      'Le PEV',
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 9),
                    ),
                  ),
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
