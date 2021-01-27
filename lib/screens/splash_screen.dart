import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/size_configs.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 2000),
        () => Navigator.of(context).pushReplacementNamed('/home'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      height: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.08,
            child: Container(
              height: double.infinity,
              child: Image.asset(
                'assets/images/bg-menu.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: vertical(size: 300)),
            alignment: Alignment.center,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: 100, right: 100, top: 12),
                  child: Text('Programme Élargi \nde Vaccination',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: fontSize(size: 14),
                          color: kPrimaryBbnColor,
                          letterSpacing: 0.2,
                          fontWeight: FontWeight.w500)),
                ),
                Expanded(
                    child: Image.asset(
                  'assets/logo/pev-black.png',
                  height: 150,
                  width: 310,
                )),
                Text(
                  'PEV',
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 19),
                      color: kPrimaryBbnColor,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
