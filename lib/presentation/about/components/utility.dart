import 'package:flutter/material.dart';

import '../../../res/manager.dart';
import '../../../widgets/skill_container.dart';
class Utility extends StatelessWidget {
  const Utility({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'my utitlity belt ',
          style: getMediumStyle(fontSize: 50, color: Colors.black),
        ),
        const SizedBox(
          height: 10,
        ),
        const UtilityBelt(),
      ],
    );
  }
}

class UtilityBelt extends StatelessWidget {
  const UtilityBelt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        LogoContainer(
          title: 'Dart.png',
          text: 'Dart',
        ),
        LogoContainer(
          title: 'Java.png',
          text: 'Java',
        ),
        LogoContainer(
          title: 'Kotlin.png',
          text: 'Kotlin',
        ),
        LogoContainer(
          title: 'Flutter.png',
          text: 'Flutter',
        ),
        LogoContainer(
          title: 'Firebase.png',
          text: ' Firebase',
        ),
        LogoContainer(
          title: 'VSCode.png',
          text: 'VSCode',
        ),
        LogoContainer(
          title: 'Figma.png',
          text: 'Figma',
        ),
        LogoContainer(
          title: 'GitHub1.png',
          text: 'Github',
        ),
        LogoContainer(
          title: 'Git.png',
          text: 'Git',
        ),
      ],
    );
  }
}