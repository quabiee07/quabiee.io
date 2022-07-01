import 'package:flutter/material.dart';
import '../../res/manager.dart';
import 'components/logo_and_text.dart';
import 'components/my_picture.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      constraints: BoxConstraints(
          maxHeight: 900, maxWidth: MediaQuery.of(context).size.width),
      width: MediaQuery.of(context).size.width,
      decoration: const  BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            AssetManager.bgImage,
          ),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 16),
        child: Stack(
          children: [
            LogoAndTextBox(height: height),
            const MyPicture(),
          ],
        ),
      ),
    );
  }
}


