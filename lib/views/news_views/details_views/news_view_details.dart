import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:pevmobile/helpers/constants.dart';

class NewsViewDetails extends StatefulWidget {
  @override
  _NewsViewDetailsState createState() => _NewsViewDetailsState();
}

class _NewsViewDetailsState extends State<NewsViewDetails> {
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
          actions: [
            Padding(
              padding: EdgeInsets.only(right: right(size: 18)),
              child: IconButton(
                icon: Icon(
                  Feather.share_2,
                ),
                onPressed: () async {
                  await FlutterShare.share(
                      title: "PEV",
                      text: 'programme élargi de vaccinations',
                      linkUrl: 'https://oms.com',
                      chooserTitle: "Choix du destinataire");
                },
              ),
            )
          ],
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
                  margin: EdgeInsets.symmetric(
                      horizontal: horizontal(size: 22),
                      vertical: vertical(size: 15)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                      child: Image.asset(
                        'assets/images/imageIcon.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 12),
                  child: Text(
                    'Campagne de sensibilisation en milieu scolaire',
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: fontSize(size: 18),
                        letterSpacing: 0.3,
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    'Publié le: 21/01/2021',
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: fontSize(size: 12),
                        letterSpacing: 0.3,
                        height: 1.5,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        child: Text(
                          "$textholder + $textholder + $textholder",
                          softWrap: true,
                          textAlign: TextAlign.justify,
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
