import 'package:flutter/material.dart';

class SecurityLevelMessage extends StatelessWidget {
  const SecurityLevelMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: const Center(
        child: Text(
          'FloatMe uses Plaid to securely connect your accounts with the highest 256-bit bank level security to keep you safe and secure',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
