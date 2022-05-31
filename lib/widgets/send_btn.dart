import 'package:flutter/material.dart';

class SendButton extends StatelessWidget {
  const SendButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 109, 158, 215),
            Color.fromARGB(255, 35, 44, 174),
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF6078EA),
            offset: Offset(0,8),
            blurRadius: 8
          )
        ]),
      ),
    );
  }
}
