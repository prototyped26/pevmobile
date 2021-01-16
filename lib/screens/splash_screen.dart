import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
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
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: vertical(size: 330)),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  'PEV',
                  softWrap: true,
                  style: TextStyle(
                      fontSize: fontSize(size: 19),
                      color: kPrimaryBbnColor,
                      fontWeight: FontWeight.w500),
                ),
                Text('Programme Élargi de Vaccination',
                    softWrap: true,
                    style: TextStyle(
                        fontSize: fontSize(size: 14),
                        color: kPrimaryBbnColor,
                        fontWeight: FontWeight.w400)),
                SizedBox(
                  height: height(size: 8),
                ),
                Container(
                  height: 23,
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.1, color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: LinearPercentIndicator(
                    animation: true,
                    animationDuration: 1300,
                    lineHeight: 15.0,
                    backgroundColor: Colors.transparent,
                    percent: 1.0,
                    progressColor: kPrimaryColor,
                    linearStrokeCap: LinearStrokeCap.roundAll,
                  ),
                ),
                SizedBox(
                  height: 9,
                ),
                Expanded(
                    child: Text(
                  'CHARGEMENT ...',
                  style: TextStyle(
                      letterSpacing: 0.75,
                      fontSize: fontSize(size: 9),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w400),
                ))
              ],
            ),
          ),
        ));
  }
}
