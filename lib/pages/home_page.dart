import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/widgets/skill_container.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final text = 'I\'m a self-taught mobile developer with more than 3 years of \nexperience in android development. I am also experienced in\nminimalist designs for mobile apps.I build both native and\ncross-platform apps using Flutter.';

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Image.asset(
          'back_circle.png',
          scale: 1,
        ),
        Image.asset(
          'backdrop.png',
          scale: 1.5,
        ),
        Positioned(
          left: 43,
          top: 70,
          child: Image.asset(
            'side_circle.png',
            scale: 2,
          ),
        ),
        Positioned(
          left: 302,
          top: 40,
          child: Image.asset(
            'rocket.png',
            scale: 2,
          ),
        ),
        Positioned(
          left: 53,
          top: 80,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, I\'m',
                style: getSemiBoldStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                'Ebuka',
                style: getBlackStyle(
                    fontSize: 50, color: ColorManager.primaryBlue),
              ),
              Text(
                text,
                style: getRegularStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        ),
        Positioned(
          left: 118,
          bottom: 200,
          child: Image.asset(
            'planet.png',
            scale: 2,
          ),
        ),
        Positioned(
          left: 45,
          bottom: 50,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: ColorManager.primaryBlue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: ColorManager.primaryBlue.withOpacity(.3),
                        offset: const Offset(0, 8),
                        blurRadius: 7),
                  ],
                ),
                child: Center(
                  child: Image.asset(
                    'Mail.png',
                    scale: 1.3,
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Image.asset(
                    'GitHub.png',
                    scale: 1,
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Image.asset(
                    'Twitter.png',
                    scale: 1,
                  ),
                ),
              ),
              const SizedBox(width: 25),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Image.asset(
                    'LinkedIn.png',
                    scale: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 70,
          top: 80,
          child: LogoContainer(
            title: 'Mobile.png',
            text: 'Mobile Development',
            color: ColorManager.secondaryBlue),
        ),
        Positioned(
          right: 280,
          top: 250,
          child: LogoContainer(
              title: 'Design.png',
              text: 'UI/UX Design',
              color: ColorManager.secondaryBlue),
        ),
        Positioned(
          right: 70,
          top: 350,
          child: LogoContainer(
                title: 'Web.png',
              text: 'DevOps',
              color:Color(0xff000000)),
        ),
      ],
    );
  }
}
