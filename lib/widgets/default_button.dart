import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.image,
    required this.text,
    this.pressed,
  }) : super(key: key);
  final String image, text;
  final Function()? pressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: pressed,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 40,
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
