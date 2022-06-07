import 'package:flutter/material.dart';

import '../res/manager.dart';

class LogoContainer extends StatelessWidget {
  final String title;
  final String text;
  final Color color;
  const LogoContainer(
      {Key? key, required this.title, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 109,
          width: 109,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: color,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: const Offset(0, 4),
                  blurRadius: 6),
            ],
          ),
          child: Center(
            child: Image.asset(title),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          text,
          style: getSemiBoldStyle(
            fontSize: FontSize.s16,
            color: ColorManager.secondaryBlue,
          ),
        ),
      ],
    );
  }
}

Widget contactContainer(image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: 50,
        decoration:const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Image.asset(
          image,
        ),
      ),
    ),
  );
}
