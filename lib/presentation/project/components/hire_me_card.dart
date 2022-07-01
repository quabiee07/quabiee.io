import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../res/manager.dart';
import '../../../widgets/default_button.dart';

class HireMeCard extends StatelessWidget {
  const HireMeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16 * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 20),
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
            ),
          ]),
      child: Row(
        children: [
          SvgPicture.asset(
            'email.svg',
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              height: 80,
              child: VerticalDivider(),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Starting A New Project?',
                  style: getBoldStyle(fontSize: 42, color: Colors.black87),
                ),
                const SizedBox(
                  height: 16 / 2,
                ),
                Text(
                  'Get an estimate for the project',
                  style: getRegularStyle(fontSize: 22, color: Colors.black87),
                )
              ],
            ),
          ),
          DefaultButton(
            image: 'rocket.png',
            text: 'Hire Me!',
            pressed: () {},
          )
        ],
      ),
    );
  }
}


