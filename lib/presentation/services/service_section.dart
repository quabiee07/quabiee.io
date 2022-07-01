import 'package:flutter/material.dart';

import '../../models/service.dart';
import '../../widgets/section_tile.dart';
import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16 * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          const SectionTitle(
            title: 'My Strong Areas',
            subtitle: 'Services I Offer',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              services.length,
              (index) => ServiceCard(index: index),
            ),
          ),
        ],
      ),
    );
  }
}
