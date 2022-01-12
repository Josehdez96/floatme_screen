import 'package:flutter/material.dart';

class LinkBankAccoundTitle extends StatelessWidget {
  const LinkBankAccoundTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment(0, -0.8),
      child: Text(
        'Link your bank where you receive direct deposits',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
