import 'package:flutter/material.dart';

import '../../../res/manager.dart';
import 'contact_form.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 1110,
      ),
      margin: EdgeInsets.only(top: 16 * 2),
      padding: const EdgeInsets.all(16 * 3),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(height: defaultPadding * 2),
        ContactForm(),
        SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AssetManager.gmail,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(AssetManager.linkedln),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(AssetManager.github),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(AssetManager.twitter),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(AssetManager.phone),
            ),
          ],
        )
      ]),
    );
  }
}


