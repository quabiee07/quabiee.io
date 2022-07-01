import 'package:flutter/material.dart';

import '../res/manager.dart';
class ReachButton extends StatelessWidget {
  const ReachButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
          color:ColorManager.secondaryBlue,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white,width: 2),
        ),
        child:  Material(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'RESUME',
                style:getBoldStyle(fontSize: FontSize.s16, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
