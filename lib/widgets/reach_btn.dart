import 'package:flutter/material.dart';

import '../res/manager.dart';
class ReachButton extends StatelessWidget {
  const ReachButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color:ColorManager.secondaryBlue,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: ColorManager.secondaryBlue.withOpacity(.3),
                offset: const Offset(0, 8),
                blurRadius: 7
            ),
          ],
        ),
        child:  Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'RESUME',
                style:getMediumStyle(fontSize: FontSize.s16, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
