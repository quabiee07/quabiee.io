import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'text_block.dart';


class LogoAndTextBox extends StatelessWidget {
  const LogoAndTextBox({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //logo
        SizedBox(
          height: 70,
          width: 70,
          child: SvgPicture.asset('assets/logo.svg'),
        ),
        TextBlock(height: height),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
