import 'package:flutter/material.dart';
import 'package:portfoilio/res/manager.dart';
import 'presentation/about/about_section.dart';
import 'presentation/contact/contact_section.dart';
import 'presentation/home/home_section.dart';
import 'presentation/project/project_section.dart';
import 'presentation/services/service_section.dart';

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
        inputDecorationTheme: defaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home:  HomeScreen(),
    );
  }
}



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            SizedBox(height: 100),
            AboutSection(),
            ServiceSection(),
            SizedBox(height: 100),
            ProjectSection(),
            SizedBox(height: 100),
            ContactSection(),
            //Default Space
            SizedBox(height: 500),
          ],
        ),
      ),
    );
  }
}


// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int selectedIndex = 0;
//   List<Widget> body = [
//     const Home(),
//     const ProjectPage(),
//     const AboutMe()
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: body[selectedIndex],

//       floatingActionButton: Align(
//         alignment: Alignment.topCenter,
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: AnimatedContainer(
//             duration: const Duration(seconds: 1),
//             padding: const EdgeInsets.all(20.0),
//             color: Colors.transparent,
//             child: ResponsiveLayout(
//               largeScreen: Row(
//                 mainAxisAlignment: ResponsiveLayout.isMobile(context)
//                     ? MainAxisAlignment.start
//                     : MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const QuabieeLogo(),
//                   if (!ResponsiveLayout.isMobile(context))
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: [
//                         CustomBottomNavigationBar(
//                           textList: const [
//                             'Home',
//                             'Skills',
//                             'Projects',
//                             'About',
//                           ],
//                           onChange: (val) {
//                             setState(() {
//                               selectedIndex = val;
//                             });
//                           },
//                           defaultSelectedIndex: 0,
//                         ),
//                       ],
//                     ),
//                   if (!ResponsiveLayout.isDesktop(context)) const ReachButton()
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
