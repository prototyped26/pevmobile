import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';

class MenuCardIcon extends StatelessWidget {
  const MenuCardIcon({
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
    return Container(
      height: 50,
      width: 50,
      color: backgroundColor ?? kPrimaryColor.withOpacity(0.15),
      child: Icon(
        iconData ?? SimpleLineIcons.location_pin,
        color: iconColor ?? kPrimaryColor,
      ),
    );
  }
}
