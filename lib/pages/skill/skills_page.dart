import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: ColorManager.backgroundColor),
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          if (ResponsiveLayout.isMobile(context))
            MobileCardView()
          else
            DesktopCardView()
        ],
      ),
    );
  }
}

class MobileCardView extends StatelessWidget {
  const MobileCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'WORKS',
                style: getBlackStyle(fontSize: 30, color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 3.0,
                  width: 300,
                  color: ColorManager.primaryBlue,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        MobileCard(),
        MobileCard(),
        MobileCard(),
      ],
    );
  }
}

class MobileCard extends StatelessWidget {
  const MobileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
            color: ColorManager.secondaryColor,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class DesktopCardView extends StatelessWidget {
  const DesktopCardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceBetween,
        children: [
          DesktopCard(),
          DesktopCard(),
          DesktopCard(),
        ],
      ),
    );
  }
}

class DesktopCard extends StatelessWidget {
  const DesktopCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: 300,
        decoration: BoxDecoration(
            color: ColorManager.primaryBlue,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
