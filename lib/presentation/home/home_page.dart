import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: DesktopHome(),
      smallScreen: MobileHome(),);
  }
}

class DesktopHome extends StatelessWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: ColorManager.backgroundColor,
      child: Stack(
        children: [
          Positioned(
            right: 10,
            top: 20,
            child: Image.asset(
              'back_circle.png',
              scale: 1,
            ),
          ),
          Positioned(
            top: 0,
            right: 35,
            child: Container(
              padding: const EdgeInsets.only(bottom:25),
              width: 800,
              height: 700,
              child: Image.asset(
                  'Saly-13.png',
                ),
            ),
          ),
          Positioned(
            left: 43,
            top: 150,
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
              scale: 1,
            ),
          ),
          Positioned(
            left: 53,
            top: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello, I\'m',
                  style: getSemiBoldStyle(fontSize: 50, color: Colors.black),
                ),
                Text(
                  'Ebuka',
                  style: getBlackStyle(
                      fontSize: 85, color: ColorManager.primaryBlue),
                ),
                Text(
                  'Mobile Developer & UI/UX Designer',
                  style: getBoldStyle(
                    fontSize: 30,
                    color: ColorManager.secondaryColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 118,
            bottom: 150,
            child: Image.asset(
              'planet.png',
              scale: 1,
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
                const SizedBox(width: 25),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.call,
                    color: Color(0xFFB7B7B7),
                  )),
                ),
              ],
            ),
          ),

        
        ],
      ),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Image.asset(
                    'back_circle.png',
                    scale: 1,
                  ),
                ),
                Positioned(
                  top: 140,
                  child: Image.asset(
                    'Saly-13.png',
                    scale: 5,
                  ),
                ),
                Positioned(
                  right: 100,
                  top: 40,
                  child: Image.asset(
                    'rocket.png',
                    scale: 1.3,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, I\'m',
                        style:
                            getSemiBoldStyle(fontSize: 40, color: Colors.black),
                      ),
                      Text(
                        'Ebuka',
                        style: getBlackStyle(
                            fontSize: 80, color: ColorManager.primaryBlue),
                      ),
                      Text(
                        'Mobile Developer & UI/UX Designer',
                        style: getBoldStyle(
                          fontSize: 20,
                          color: ColorManager.secondaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 50,
                  bottom: 180,
                  child: Image.asset(
                    'planet.png',
                    scale: 1.3,
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
                      const SizedBox(width: 25),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.call,
                          color: Color(0xFFB7B7B7),
                        )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
         
        ],
      );
  }
}