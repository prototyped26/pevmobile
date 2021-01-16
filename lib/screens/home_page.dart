import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';
import 'package:pevmobile/widgets/buttons/default_button.dart';
import 'package:pevmobile/widgets/cards/menu_card.dart';
import 'package:pevmobile/widgets/cards/news_card.dart';
import 'package:pevmobile/widgets/forms/form_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Form(
                key: _formKey,
                child: Column(
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
              SpacerHeight(size: 15),
              DefaultButton(
                formKey: _formKey,
              ),
              SpacerHeight(size: 15),
              MenuCard(),
              MenuCard(
                mTag: 'mHero',
              ),
              SpacerHeight(size: 15),
              NewsCard(
                route: 'news',
              ),
              SpacerHeight(size: 15),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
