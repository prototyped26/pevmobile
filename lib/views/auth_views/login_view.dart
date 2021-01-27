import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/buttons/default_button.dart';
import 'package:pevmobile/widgets/forms/form_widget.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpacerPercentHeight(size: 0.15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 28),
                margin: EdgeInsets.only(bottom: bottom(size: 28)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Bonjour !',
                      softWrap: true,
                      style: TextStyle(
                          fontSize: fontSize(size: 38),
                          color: kAccentColor,
                          fontWeight: FontWeight.bold),
                    ),
                    SpacerHeight(size: 15),
                    Text(
                      'Pour vous connecter à votre compte renseigner les champs suivants.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: kAccentColor,
                          fontWeight: FontWeight.w600,
                          fontSize: fontSize(size: 16)),
                    )
                  ],
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      labelText: 'Mot de Passe',
                      keyboardType: TextInputType.text,
                      isPassword: true,
                      validator: (String text) {
                        return (text.isEmpty) ? kPassNullError : '';
                      },
                    ),
                    SpacerHeight(size: 15),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text(
                        'Mot de passe oublié ?',
                        softWrap: true,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SpacerHeight(size: 20),
              DefaultButton(
                formKey: _formKey,
                text: 'Se connecter',
                onPress: () {
                  if (_formKey.currentState.validate()) {
                    print('Great job');
                  }
                },
              ),
              SpacerHeight(size: 25),
              Text.rich(
                TextSpan(
                    text: 'Pas encore enregistré? ',
                    children: [
                      TextSpan(
                          text: " S'inscrire",
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.of(context)
                                .pushNamed('/vaccins/users-signup'),
                          style: TextStyle(color: kPrimaryColor))
                    ],
                    style: TextStyle(
                        color: kAccentColor,
                        fontSize: fontSize(size: 17),
                        fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
