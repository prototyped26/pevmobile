import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';

class PartnersViews extends StatelessWidget {
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
            'Partenaires',
            softWrap: true,
            style: TextStyle(fontSize: fontSize(size: 19)),
          ),
          centerTitle: true,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.only(top: 35),
          child: ListView(
            children: [
              ...List.generate(
                  20,
                  (index) => Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: horizontal(size: 25), vertical: 8),
                        height: 150,
                        width: 330,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.grey[500].withOpacity(0.1)),
                        child: Row(
                          children: [
                            Image.asset('assets/logo/oms.png'),
                            Expanded(
                              child: Container(
                                  child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'OMS',
                                    softWrap: true,
                                    style: TextStyle(
                                        fontSize: fontSize(size: 16),
                                        letterSpacing: 0.2,
                                        color: kPrimaryBbnColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    placeholder,
                                    softWrap: true,
                                    textAlign: TextAlign.justify,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 4,
                                    style: TextStyle(letterSpacing: 0.2),
                                  ),
                                ],
                              )),
                            )
                          ],
                        ),
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
