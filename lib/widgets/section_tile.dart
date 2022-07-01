import 'package:flutter/material.dart';

import '../res/manager.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 1110),
      margin: const EdgeInsets.symmetric(vertical: 16),
      height: 100,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.only(bottom: 72),
            width: 8,
            height: 100,
            color: Colors.black,
            child: const DecoratedBox(
              decoration: BoxDecoration(color: ColorManager.primaryBlue),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: getRegularStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                subtitle,
                style: getBoldStyle(fontSize: 50, color: Colors.black87),
              ),
            ],
          )
        ],
      ),
    );
  }
}

