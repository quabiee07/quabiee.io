import 'package:flutter/material.dart';

import '../../models/project.dart';
import '../../res/manager.dart';
import '../../widgets/section_tile.dart';
import 'components/hire_me_card.dart';
import 'components/project_card.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 1110
      decoration: BoxDecoration(
        color: ColorManager.secondaryColor.withOpacity(0.3),
        image: const DecorationImage(
          image: AssetImage('desk.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(0, -80),
            child: const HireMeCard(),
          ),
          const SectionTitle(
              title: 'Take a peek at my works', subtitle: 'Recent Projects'),
          const SizedBox(
            height: 16,
          ),
          Wrap(
            spacing: 16 * 2,
            runSpacing: 16 * 2,
            children: List.generate(
              projects.length,
              (index) => ProjectCard(
                index: index,
                pressed: () {},
              ),
            ),
          ),
          const SizedBox(
            height: 16 * 5,
          )
        ],
      ),
    );
  }
}
