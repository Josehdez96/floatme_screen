import 'package:flutter/material.dart';

import 'benefit_item.dart';

class BenefitList extends StatelessWidget {
  const BenefitList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: const [
        BeneiftItem(
          text: 'Instantly Float up to \$50',
          icon: Icons.money_rounded,
        ),
        BeneiftItem(
          text: 'Track monthly spending',
          icon: Icons.bar_chart,
        ),
        BeneiftItem(
          text: 'Low balance alerts',
          icon: Icons.add_alert,
        ),
      ],
    );
  }
}
