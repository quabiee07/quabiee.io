import 'package:flutter/material.dart';

import '../../../res/manager.dart';




class MyPicture extends StatelessWidget {
  const MyPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(300, 0),
      child: Image.asset(
        AssetManager.mypic,
      ),
    );
  }
}
