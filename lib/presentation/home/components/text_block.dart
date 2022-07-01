import 'package:flutter/material.dart';

import '../../../res/manager.dart';


class TextBlock extends StatelessWidget {
  const TextBlock({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16 * 2),
      width: double.infinity,
      constraints: BoxConstraints(maxWidth: 1110, maxHeight: height * 0.7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            StringManager.salutaion,
            style: getMediumStyle(
              fontSize: 40,
              color: Colors.white.withOpacity(0.6),
            ),
          ),
          Text(
            StringManager.name,
            style: getBlackStyle(
              fontSize: 65,
              color: Colors.white,
            ),
          ),
          Text(
            StringManager.path,
            style: getSemiBoldStyle(
              fontSize: 24,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
