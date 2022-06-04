import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  CustomBottomNavigationBar(
      {Key? key,
      this.defaultSelectedIndex = 0,
      required this.iconList,
      required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<dynamic> _iconList = [];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_iconList[i], i));
    }

    final width = MediaQuery.of(context).size.width / 1.5;

    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
            width: width,
            height: 100,
            decoration: BoxDecoration(
              color: ColorManager.backgroundColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.15),
                  blurRadius: 30,
                  offset: const Offset(0, 10),
                ),
              ],
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _navBarItemList,
            )));
  }

  Widget buildNavBarItem(icon, int index) {
    final width = MediaQuery.of(context).size.width / 1.5;
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(
          () {
            _selectedIndex = index;
          },
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(color: ColorManager.backgroundColor),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Icon(icon,
                  size: 30,
                  color: index == _selectedIndex
                      ? ColorManager.primaryBlue
                      : Colors.grey),
              const SizedBox(
                height: 10,
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 1500),
                curve: Curves.fastLinearToSlowEaseIn,
                margin: EdgeInsets.only(
                  right: width * .0422,
                  left: width * .0422,
                ),
                width: 8,
                height: index == _selectedIndex ? width * .010 : 0,
                decoration: BoxDecoration(
                    color: ColorManager.primaryBlue,
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
