import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required GlobalKey<FormState> formKey,
    this.text,
  })  : _formKey = formKey,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 58,
      minWidth: 330,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: RaisedButton(
          elevation: 3,
          color: kPrimaryColor,
          child: Text(
            text ?? 'Envoyer',
            softWrap: true,
            style: TextStyle(
                color: Colors.white,
                letterSpacing: 0.7,
                fontSize: fontSize(size: 15)),
          ),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              print('Great job');
            }
          },
        ),
      ),
    );
  }
}
