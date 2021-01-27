import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/buttons/default_button.dart';
import 'package:pevmobile/widgets/forms/form_widget.dart';

class SignupView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: left(size: 18)),
            child: IconButton(
              icon: Icon(
                SimpleLineIcons.arrow_left,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          title: Text(
            'Créer un compte',
            softWrap: true,
            style: TextStyle(
                fontSize: fontSize(size: 21),
                fontWeight: FontWeight.w600,
                color: kAccentColor),
          ),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpacerHeight(size: 12),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: horizontal(size: 40)),
                  margin: EdgeInsets.only(bottom: bottom(size: 28)),
                  child: Text(
                    'Pour vous créer un compte renseigner les champs suivants.',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kAccentColor,
                        fontWeight: FontWeight.w600,
                        fontSize: fontSize(size: 16)),
                  )),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BTextFormField(
                      labelText: 'Nom complet',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      validator: (String text) {
                        return (text.isEmpty) ? kNameNullError : '';
                      },
                    ),
                    SpacerHeight(size: 15),
                    BTextFormField(
                      labelText: 'Numéro de Téléphone',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      validator: (String text) {
                        return (text.isEmpty)
                            ? kPhoneNumberNullError
                            : (text.length < 9 || text.length > 9)
                                ? kPhoneNumberSizeError
                                : '';
                      },
                    ),
                    SpacerHeight(size: 15),
                    BTextFormField(
                      labelText: 'Adresse E-mail',
                      keyboardType: TextInputType.emailAddress,
                      validator: (String text) {
                        return (text.isEmpty)
                            ? kEmailNullError
                            : (!emailValidatorRegExp.hasMatch(text))
                                ? kInvalidEmailError
                                : '';
                      },
                    ),
                    SpacerHeight(size: 15),
                    BTextFormField(
                      labelText: 'Ville de résidence',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      validator: (String text) {
                        return (text.isEmpty) ? kCityNullError : '';
                      },
                    ),
                    SpacerHeight(size: 15),
                    BTextFormField(
                      labelText: 'Mot de Passe',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      validator: (String text) {
                        return (text.isEmpty) ? kPassNullError : '';
                      },
                    ),
                  ],
                ),
              ),
              SpacerHeight(size: 20),
              DefaultButton(
                formKey: _formKey,
                text: 'Continuer',
                onPress: () {
                  if (_formKey.currentState.validate()) {
                    print('Great job');
                  }
                },
              ),
              SpacerHeight(size: 25),
            ],
          ),
        ),
      ),
    );
  }
}
