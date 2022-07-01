import 'package:flutter/material.dart';

import '../../../res/manager.dart';


class ExperienceCard extends StatelessWidget {
  const ExperienceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(16),
      height: 200,
      width: 255,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.secondaryColor,
        // borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 160, 198, 252),
            // borderRadius: BorderRadius.circular(10),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 3),
                blurRadius: 6,
                color: ColorManager.primaryBlue.withOpacity(0.25),
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Text(
                  '03',
                  style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.w600,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = ColorManager.primaryBlue.withOpacity(0.5),
                      shadows: [
                        BoxShadow(
                            offset: const Offset(0, 5),
                            blurRadius: 10,
                            color: Colors.grey.withOpacity(0.5))
                      ]),
                ),
                const Text(
                  "03",
                  style: TextStyle(fontSize: 100, color: Colors.white),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 5),
                        blurRadius: 10,
                        color: Colors.grey.withOpacity(0.5))
                  ]),
              child: const Text(
                "Years of Experience",
                style: TextStyle(
                    fontFamily: FontConstant.fontFamily,
                    color: ColorManager.primaryBlue,
                    fontSize: 15,
                    fontWeight: FontWeightManager.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}