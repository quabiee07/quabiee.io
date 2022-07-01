import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../res/manager.dart';
class AboutText extends StatelessWidget {
  const AboutText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Text(
        StringManager.lorem1,
        style: getRegularStyle(
          fontSize: 20,
          color: Colors.black54,
        ),
      ),
    );
  }
}

class AboutTextWithLogo extends StatelessWidget {
  const AboutTextWithLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'my\nstory',
          style: getBoldStyle(fontSize: 50, color: Colors.black),
        ),
        const SizedBox(
          height: 16 * 2,
        ),
      ],
    );
  }
}
