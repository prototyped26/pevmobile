import 'package:flutter/material.dart';
import 'package:pevmobile/helpers/constants.dart';

import 'components/partner_card_content.dart';

class PartnersCard extends StatelessWidget {
  const PartnersCard({
    Key key,
    this.logo,
    this.title,
    this.subTitle,
    this.route,
    this.bigger = false,
  }) : super(key: key);

  final String logo;
  final String title;
  final String subTitle;
  final String route;
  final bool bigger;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(route ?? ''),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: horizontal(size: 25), vertical: 8),
        height: 120,
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey[500].withOpacity(0.1)),
        child: Row(
          children: [
            (!bigger)
                ? Image.asset(logo ?? 'assets/logo/oms.png')
                : Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: Image.asset(logo ?? 'assets/logo/oms.png'),
                  ),
            PartnerCardContent(title: title, subTitle: subTitle)
          ],
        ),
      ),
    );
  }
}
