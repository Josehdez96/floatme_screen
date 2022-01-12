import 'package:floatme_behavior/providers/animate_bank_provider.dart';
import 'package:flutter/material.dart';

class BeneiftItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const BeneiftItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AnimateBankProvider.animateButton(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromRGBO(3, 67, 131, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          height: 140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 45),
              const SizedBox(height: 15),
              Text(
                text,
                style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline5!.fontSize,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
