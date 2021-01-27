import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';
import 'package:pevmobile/helpers/spacer.dart';

class PartnerViewDetails extends StatefulWidget {
  @override
  _PartnerViewDetailsState createState() => _PartnerViewDetailsState();
}

class _PartnerViewDetailsState extends State<PartnerViewDetails> {
  String mTag = "";

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Map args = ModalRoute.of(context).settings.arguments;
      setState(() {
        mTag = args['tag'];
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: left(size: 10)),
            child: IconButton(
              icon: Icon(
                SimpleLineIcons.arrow_left,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Hero(
          tag: mTag,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 170,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                      horizontal: horizontal(size: 22),
                      vertical: vertical(size: 15)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[500].withOpacity(0.1)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Image.asset(
                        'assets/logo/oms.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SpacerHeight(size: 20),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 12),
                  child: Text(
                    'OMS: Organisation Mondiale de la Santé',
                    softWrap: true,
                    style: TextStyle(
                        fontSize: fontSize(size: 19),
                        letterSpacing: 0.3,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                SpacerHeight(size: 12),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        child: Text(
                          "$textholder.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 7,
                          style: TextStyle(
                              fontSize: fontSize(size: 16),
                              letterSpacing: 0.3,
                              height: 1.8,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                        child: Text(
                          '1) Organisation Mondiale de la Santé',
                          softWrap: true,
                          style: TextStyle(
                              fontSize: fontSize(size: 19),
                              letterSpacing: 0.3,
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                        child: Text(
                          "$textholder.",
                          softWrap: true,
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 7,
                          style: TextStyle(
                              fontSize: fontSize(size: 16),
                              letterSpacing: 0.3,
                              height: 1.8,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
