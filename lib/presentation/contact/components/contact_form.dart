import 'package:flutter/material.dart';

import '../../../res/manager.dart';
import '../../../widgets/default_button.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: defaultPadding * 2.5,
        runSpacing: defaultPadding,
        children: [
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter your name',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter your email',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Project Type',
                hintText: 'Enter your Project Type',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Project Budget',
                hintText: 'Enter your Project Budget',
              ),
            ),
          ),
          SizedBox(
            child: TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'Description',
                hintText: 'Describe your project',
              ),
            ),
          ),
          SizedBox(height: defaultPadding),
          Center(
            child: FittedBox(
              child: DefaultButton(
                image: 'rocket.png',
                text: 'Contact Me!',
                pressed: () {},
              ),
            ),
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
        ],
      ),
    );
  }
}
