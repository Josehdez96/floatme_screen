import 'package:flutter/material.dart';

import 'widgets/link_bank_account_title.dart';
import 'widgets/security_level_message.dart';
import 'widgets/shared/buttons/connect_to_bank_button.dart';
import 'package:floatme_behavior/widgets/benefit_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link your bank screen demo',
      debugShowCheckedModeBanner: false,
      home: const LinkYourBankScreen(),
      theme: _appTheme(),
    );
  }

  ThemeData _appTheme() {
    return ThemeData(
      canvasColor: const Color.fromRGBO(4, 102, 201, 1),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: const TextTheme(
        bodyText2: TextStyle(),
      ).apply(bodyColor: Colors.white, displayColor: Colors.white),
    );
  }
}

class LinkYourBankScreen extends StatelessWidget {
  const LinkYourBankScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: LinkBankAccoundTitle(),
              ),
              const Expanded(flex: 5, child: BenefitList()),
              Expanded(
                flex: 3,
                child: Column(
                  children: const [
                    SecurityLevelMessage(),
                    ConnectToBankButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
