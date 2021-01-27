import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';

class MenuCardIcon extends StatelessWidget {
  const MenuCardIcon({
    Key key,
    this.iconData,
    this.backgroundColor,
    this.iconColor,
    this.image,
    this.height,
    this.width,
    this.radius,
  }) : super(key: key);

  final IconData iconData;
  final Color backgroundColor;
  final Color iconColor;
  final String image;
  final double height;
  final double width;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return (image == null)
        ? Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: backgroundColor ?? kPrimaryColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(radius ?? 25)),
            child: Icon(
              iconData ?? SimpleLineIcons.location_pin,
              color: iconColor ?? kPrimaryColor,
            ))
        : CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(image));
  }
}
