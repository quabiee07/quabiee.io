import 'package:flutter/material.dart';
import 'package:portfoilio/presentation/about/about_page.dart';
import 'package:portfoilio/presentation/home/home_page.dart';
import 'package:portfoilio/presentation/project/projects_page.dart';
import 'package:portfoilio/presentation/skill/skills_page.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'quabiee.io',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          physics: BouncingScrollPhysics(),
          controller: _pageController,
          scrollDirection: Axis.vertical,
          onPageChanged: (index){
            setState(() {
              _selectedIndex = index;
            });
          },
          children: [
           const Home(),
              Container(color: Colors.red,),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
          ],

        ),
      ),
      // floatingActionButton: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: CustomBottomNavigationBar(
      //     iconList: const [Icons.home, Icons.layers, Icons.pages, Icons.person],
      //     onChange: _onItemTapped,
      //     defaultSelectedIndex: _selectedIndex,
      //   ),
      // ),
    );
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;

      _pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeOutQuart);
    });
  
}
}

