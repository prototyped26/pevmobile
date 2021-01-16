import 'package:flutter/material.dart';

import 'size_configs.dart';

const kPrimaryColor = Color(0xFF1F58a9);
const kPrimaryLightColor = Color(0xFF085782);
const kPrimaryBbnColor = Color.fromRGBO(60, 60, 60, 1);
const kPrimaryCardColor = Color(0xFFCCCCCC);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kTextLightColor = Color.fromRGBO(237, 237, 237, 1);

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
final RegExp validatorRegExp = RegExp(r"^[a-z0-9]");
final RegExp digitValidatorRegExp = RegExp(r"^[0-9]+$");
final String textValidatorError = "Ce champ ne doit contenir que des chiffres";
const String kEmailNullError = "Please Enter your email";
const String kEmailNullErrorFr = "Svp entrez votre email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kInvalidEmailErrorFr = "Entrez une adresse mail valide";
const String kPassNullError = "Please Enter your password";
const String kPassNullErrorFr = "Svp entrez votre mot de passe";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNameNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}

fontSize({double size}) => getProportionateScreenWidth(size);
horizontal({double size}) => getProportionateScreenWidth(size);
width({double size}) => getProportionateScreenWidth(size);
left({double size}) => getProportionateScreenWidth(size);
right({double size}) => getProportionateScreenWidth(size);
vertical({double size}) => getProportionateScreenHeight(size);
height({double size}) => getProportionateScreenHeight(size);
top({double size}) => getProportionateScreenHeight(size);
bottom({double size}) => getProportionateScreenHeight(size);
