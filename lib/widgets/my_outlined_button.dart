import 'package:flutter/material.dart';


class MyOutlinedButton extends StatelessWidget {
  const MyOutlinedButton({
    Key? key,
    required this.image,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String image, text;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlinedButton(
        onPressed: press,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Image.asset(
                image,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                text,
                style: const TextStyle(color: Colors.black87),
              )
            ],
          ),
        ),
      ),
    );
  }
}

