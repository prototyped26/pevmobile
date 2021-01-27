import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/size_configs.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    this.text,
    this.onPress,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 65,
      minWidth: SizeConfig.screenWidth * 0.89,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: RaisedButton(
            elevation: 3,
            color: kPrimaryColor,
            child: Text(
              text ?? 'Envoyer',
              softWrap: true,
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 0.7,
                  fontSize: fontSize(size: 17)),
            ),
            onPressed: onPress),
      ),
    );
  }
}
