import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsCardIcon extends StatelessWidget {
  @override
  const NewsCardIcon({Key key, this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(0),
      child: Container(
          width: 100,
          height: 100,
          padding: EdgeInsets.symmetric(horizontal: 1),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(1.0, 1.0),
                  blurRadius: 7,
                  color: Colors.white,
                  spreadRadius: 1)
            ],
          ),
          child: Image.asset(
            image ?? 'assets/images/imageIcon.png',
            fit: BoxFit.cover,
          )),
    );
  }
}
