import 'package:flutter/material.dart';

import '../../res/manager.dart';
import '../../widgets/section_tile.dart';
import 'components/contact_box.dart';


class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(50),
      decoration: const BoxDecoration(
        color: ColorManager.backgroundColor,
        image: DecorationImage(
          image: AssetImage(''),
        ),
      ),
      child: Column(
        children: const [
          SizedBox(
            height: 16 * 2.5,
          ),
          SectionTitle(
              title: 'For project inquiry and information',
              subtitle: 'Contact Me'),
          ContactBox()
        ],
      ),
    );
  }
}

