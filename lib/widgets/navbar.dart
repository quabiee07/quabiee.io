import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<String> textList;

  CustomBottomNavigationBar(
      {Key? key,
      this.defaultSelectedIndex = 0,
      required this.textList,
      required this.onChange});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<dynamic> _textList = [];

  @override
  void initState() {
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _textList = widget.textList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];

    for (var i = 0; i < _textList.length; i++) {
      _navBarItemList.add(buildNavBarItem(_textList[i], i));
    }

    final width = MediaQuery.of(context).size.width / 1.5;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: _navBarItemList,
    );
  }

  Widget buildNavBarItem(text, int index) {
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Text(
              text,
              style: getSemiBoldStyle(
                  fontSize: 18,
                  color: index == _selectedIndex
                      ? Colors.white
                      : Colors.black87),
            ),
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
              width: 10,
              height: index == _selectedIndex ? 5 : 0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)),
            ),
          ],
        ),
      ),
    );
  }
}
