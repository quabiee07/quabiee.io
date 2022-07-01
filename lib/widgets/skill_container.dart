import 'package:flutter/material.dart';
import '../res/manager.dart';

class LogoContainer extends StatelessWidget {
  final String title;
  final String text;
  const LogoContainer(
      {Key? key, required this.title, required this.text, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              color: Colors.white,
              boxShadow:  [
                BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: const Offset(0, 2),
                    blurRadius: 2),
              ],
            ),
            child: Center(
              child: Image.asset(
                title, 
                scale: 2,
                ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          text,
          style: getSemiBoldStyle(
            fontSize: FontSize.s18,
            color: Colors.black87,
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
