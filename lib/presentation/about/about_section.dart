import 'package:flutter/material.dart';

import '../../widgets/default_button.dart';
import '../../widgets/my_outlined_button.dart';
import '../../widgets/section_tile.dart';
import 'components/about_text.dart';
import 'components/experience_card.dart';
import 'components/utility.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16 * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(title: 'This is my story', subtitle: 'About Me'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Expanded(
                child: AboutText(),
              ),
              ExperienceCard(),
              Expanded(
                child: AboutText(),
              ),
            ],
          ),
          const SizedBox(
            height: 80,
          ),
          const Utility(),
          const SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlinedButton(
                image: 'assets/rocket.png',
                text: 'Hire Me!',
                press: () {},
              ),
              const SizedBox(width: 16 * 2),
              DefaultButton(
                image: 'assets/planet.png',
                text: 'Download CV',
                pressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
