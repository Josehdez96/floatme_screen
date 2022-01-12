import 'package:floatme_behavior/providers/animate_bank_provider.dart';
import 'package:flutter/material.dart';

class ConnectToBankButton extends StatefulWidget {
  const ConnectToBankButton({
    Key? key,
  }) : super(key: key);

  @override
  State<ConnectToBankButton> createState() => _ConnectToBankButtonState();
}

class _ConnectToBankButtonState extends State<ConnectToBankButton>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    AnimateBankProvider.controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    AnimateBankProvider.animation.addListener(() {
      setState(() {});
    });
    AnimateBankProvider.shadowAnimation.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.security,
        color: Colors.black,
      ),
      label: const Text(
        'Securely connect bank',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(
          AnimateBankProvider.shadowAnimation.value,
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, AnimateBankProvider.animation.value),
        ),
      ),
    );
  }

  @override
  void dispose() {
    AnimateBankProvider.disposeAnimation();
    super.dispose();
  }
}
