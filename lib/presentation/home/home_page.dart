import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';
import 'package:portfoilio/widgets/skill_container.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: DesktopHome(),
      smallScreen: MobileHome(),
    );
  }
}

class DesktopHome extends StatelessWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorManager.backgroundColor,
        child: Stack(
          children: [
            Positioned(
              top: -300,
              child: Image.asset(
                'desktop_bg1.png',
                scale: 1,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: 0,
              child: Image.asset(
                'Saly-13.png',
                scale: 2.9,
              ),
            ),
            Positioned(
              right: 590,
              bottom: 300,
              child: Image.asset(AssetManager.rocket),
            ),
            Positioned(
              left: 100,
              top: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    StringManager.salutaion,
                    style: getMediumStyle(
                      fontSize: 45,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                  Text(
                    StringManager.name,
                    style: getBlackStyle(fontSize: 72, color: Colors.white),
                  ),
                  Text(
                    StringManager.path,
                    style: getSemiBoldStyle(
                      fontSize: 33,
                      color: Colors.white.withOpacity(0.8),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contactContainer('Phone.png'),
                      contactContainer('Gmail.png'),
                      contactContainer('GitHub.png'),
                      contactContainer('Linkedin.png'),
                      contactContainer('Twitter.png'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileHome extends StatelessWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        color: ColorManager.backgroundColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                'desktop_bg1.png',
              ),
            ),
            // Positioned(
            //   top: 15,
            //   left: 15,
            //   child: Text('quabiee.io',
            //           style: getBlackStyle(fontSize: 15, color: Colors.white)),
            //      ),
            //      SizedBox(height: 20,),
            Positioned(
              top: 25,
              child: Column(
                children: [
                  Text(
                    StringManager.salutaion,
                    style: getMediumStyle(
                        fontSize: 20, color: Colors.white.withOpacity(0.6)),
                  ),
                  Text(StringManager.name,
                      style: getBlackStyle(fontSize: 30, color: Colors.white)),
                  Text(StringManager.path,
                      style: getSemiBoldStyle(
                          fontSize: 16, color: Colors.white.withOpacity(0.8))),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      contactContainer('Phone.png'),
                      contactContainer('Gmail.png'),
                      contactContainer('GitHub.png'),
                      contactContainer('Linkedin.png'),
                      contactContainer('Twitter.png'),
                    ],
                  ),
                  Image.asset(
                    'Saly-13.png',
                    scale: 4.2,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 200,
              left: 30,
              child: Image.asset(AssetManager.rocket),
            ),
          ],
        ),
      ),
    );
  }
}
