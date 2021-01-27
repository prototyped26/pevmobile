import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/widgets/cards/news_card.dart';

class NewsTabComponents extends StatelessWidget {
  const NewsTabComponents({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top(size: 10)),
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: horizontal(size: 18)),
        shrinkWrap: true,
        children: [
          ...List.generate(
              10,
              (index) => NewsCard(
                    mTag: 'sage$index',
                    color: Colors.white,
                    route: '/infos/news-details',
                  ))
        ],
      ),
    );
  }
}
