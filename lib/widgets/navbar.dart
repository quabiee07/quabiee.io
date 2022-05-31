import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';
import 'package:portfoilio/widgets/reach_btn.dart';

class NavBar extends StatelessWidget {
  NavBar({Key? key}) : super(key: key);
  final navLinks = ['Home', 'Skills', 'Projects', 'Contact'];

  List<Widget> navItem() {
    return navLinks
        .map(
          (text) => GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                text,
                style:
                    getBoldStyle(fontSize: FontSize.s16, color: Colors.black87),
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('logoo.png'),
          if (!ResponsiveLayout.isMobile(context))
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ...navItem(),
                // SizedBox(width: 300,),
                ReachButton()
              ],
            )
          else
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu_rounded))
        ],
      ),
    );
  }
}

class ContentView {
  final CustomTab tab;
  final Widget content;
  ContentView({required this.tab, required this.content});
}

class CustomTab extends StatelessWidget {
  final String title;
  const CustomTab({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Montserrat',
            fontWeight: FontWeightManager.medium),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final TabController controller;
  final List<Widget> tabs;
  const CustomTabBar({Key? key, required this.controller, required this.tabs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width * 0.45,
      child: Center(
        child: TabBar(
          tabs: tabs,
          controller: controller,
          indicatorColor: ColorManager.primaryBlue,
          indicatorPadding: const EdgeInsets.symmetric(horizontal: 55),
          labelColor: ColorManager.primaryBlue,
          unselectedLabelColor: Colors.black,
        ),
      ),
    );
  }
}
