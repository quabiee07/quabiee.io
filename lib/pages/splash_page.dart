import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: Desktop(),
      smallScreen: Mobile(),
    );
  }
}

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryBlue,
      body: Center(
        // child: TweenAnimationBuilder(
        //   tween: Tween(begin: 0, end: 1),
        //   duration:const Duration(milliseconds: 500),
        //   builder: (BuildContext context,double _val,child){
        //     return Opacity(
        //         opacity: _val,
        //         child: child);
        //
        //   },
          child: SvgPicture.asset(
            'logo.svg',
          ),
        )
      );
    // );
  }
}

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryBlue,
      body: Center(child: SvgPicture.asset('logo.svg')),
    );
  }
}
