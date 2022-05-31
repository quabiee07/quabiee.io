import 'package:flutter/material.dart';
import 'package:portfoilio/pages/about_page.dart';
import 'package:portfoilio/pages/home_page.dart';
import 'package:portfoilio/pages/service_page.dart';
import 'package:portfoilio/pages/splash_page.dart';
import 'package:portfoilio/pages/works_page.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/utils/responsive_layout.dart';
import 'package:portfoilio/widgets/navbar.dart';
import 'package:portfoilio/widgets/reach_btn.dart';
import 'package:portfoilio/widgets/search.dart';

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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  List<ContentView> contentViews = [
    ContentView(
      tab: CustomTab(
        title: 'Home',
      ),
      content: Home()
    ),
    ContentView(
      tab: CustomTab(
        title: 'Works',
      ),
      content: Works()
    ),
    ContentView(
      tab: CustomTab(
        title: 'Services',
      ),
      content: Services()
    ),
    ContentView(
      tab: CustomTab(
        title: 'About me',
      ),
      content:AboutMe()
    ),
  ];
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: contentViews.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFFF8FBFF),
          Color(0xFFFCFDFD),
        ]),
      ),
      child: Scaffold(
        backgroundColor: ColorManager.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('logoo.png'),
                    if(!ResponsiveLayout.isMobile(context))
                    Row(
                      children: [
                        CustomTabBar(
                          controller: tabController,
                          tabs: contentViews.map((e) => e.tab).toList(),
                        ),
                        const ReachButton()
                      ],
                    )
                    else
                      IconButton(onPressed: (){}, icon: Icon(Icons.menu))
                  ],
                ),
              ),
              SizedBox(
                height: height *0.85,
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: contentViews.map((e) => e.content).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  const LargeChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
              alignment: Alignment.topRight,
              widthFactor: .29,
              heightFactor: .8,
              child: Image.asset("ebuka.png", scale: .85)),
          FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: .75,
            child: Padding(
              padding: const EdgeInsets.only(left: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Ihekwaba Ebuka",
                      style: getBoldStyle(fontSize: 50, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Mobile Developer & UX ',
                        style: getMediumStyle(
                            fontSize: 30,
                            color: const Color.fromARGB(255, 109, 158, 215)),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Expert',
                            style: getSemiBoldStyle(
                              fontSize: 30,
                              color: const Color.fromARGB(255, 109, 158, 215),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 20),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nNam tortor massa amet at tincidunt nunc, metus, dictumst ac.\nSociis diam consequat, interdum tristique id diam. Aliquam auctor\n aliquet mi eu. Dolor enim risus enim, viverra sit mi egestas ornare.",
                          style: getRegularStyle(
                              fontSize: FontSize.s20, color: Colors.black))),
                  const SizedBox(
                    height: 40,
                  ),
                  // const Search(),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
          // Positioned(
          //   bottom: 0,
          //   child: Container(
          //     padding: const EdgeInsets.all(15),
          //     height: 200,
          //     color: Color.fromARGB(255, 159, 201, 250),
          //     width: MediaQuery.of(context).size.width,
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         const SizedBox(
          //           height: 60,
          //         ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     SkillChip(icon: 'Java.png', name: 'Java'),
          //
          //     SkillChip(icon: 'Kotlin.png', name: 'Kotlin'),
          //
          //     SkillChip(icon: 'Flutter.png', name: 'Flutter'),
          //
          //     SkillChip(
          //         icon: 'AndroidStudio.png', name: 'Android Studio'),
          //   ],
          // )
          //   ],
          // ),
          // ),
          // ),
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  const SmallChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Ihekwaba Ebuka",
                style: getBoldStyle(fontSize: 40, color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 3,
            ),

            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: RichText(
                text: TextSpan(
                  text: 'Mobile Developer & UX ',
                  style: getMediumStyle(
                      fontSize: 25,
                      color: const Color.fromARGB(255, 109, 158, 215)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Expert',
                      style: getBoldStyle(
                          fontSize: 25,
                          color: const Color.fromARGB(255, 109, 158, 215)),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tortor massa amet at tincidunt nunc, metus, dictumst ac. Sociis diam consequat, interdum tristique id diam. Aliquam auctor aliquet mi eu. Dolor enim risus enim, viverra sit mi egestas ornare.",
                  style: getRegularStyle(
                      fontSize: FontSize.s20, color: Colors.black),
                )),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Image.asset(
                "ebuka.png",
                scale: 2,
              ),
            ),

            // const Search(),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 159, 201, 250),
                  borderRadius: BorderRadius.circular(15)),
              child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,
                spacing: 15.0,
                runSpacing: 15.0,
                children: [
                  SkillChip(icon: 'AndroidStudio.png', name: 'Android Studio'),
                  SkillChip(icon: 'Java.png', name: 'Java'),
                  SkillChip(icon: 'Kotlin.png', name: 'Kotlin'),
                  SkillChip(icon: 'Flutter.png', name: 'Flutter'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SkillChip extends StatelessWidget {
  String icon;
  String name;
  SkillChip({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: [
          Image.asset(icon),
          const SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: getBoldStyle(fontSize: FontSize.s16, color: Colors.white),
          )
        ],
      ),
    );
  }
}
