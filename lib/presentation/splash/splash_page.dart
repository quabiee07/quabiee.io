import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';

import '../../main.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
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

class _DesktopState extends State<Desktop> with TickerProviderStateMixin{
  Timer? _timer;
  late final AnimationController _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 2000))..repeat(reverse: false);
  late final Animation<AlignmentGeometry> _animation = Tween(
    begin: Alignment.bottomRight,
    end: Alignment.center).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),

    );
  startDelay() {
    _timer = Timer(const Duration(milliseconds: 2000), navigate);
  }

  navigate() {
    return Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.primaryBlue,
        body: AlignTransition(
          alignment: _animation,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset(
            'logo.svg',
              ),
          ),
        ),
      );
  }
}

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

  Timer? _timer;

  startDelay() {
    _timer = Timer(const Duration(seconds: 3), navigate);
  }

  navigate() {
   return Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  void initState() {
    super.initState();
    startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryBlue,
      body: Center(child: SvgPicture.asset('logo.svg')),
    );
  }
}
