import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfoilio/res/manager.dart';
import 'package:portfoilio/widgets/skill_container.dart';
import '../../utils/responsive_layout.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: DesktopSkill(),
      smallScreen: MobileSkill(),
    );
  }
}

class MobileSkill extends StatelessWidget {
  const MobileSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: ColorManager.backgroundColor,
      child: Stack(
        children: [
          Image.asset(AssetManager.skillMobileBg),
          Positioned(
            top: 50,
            left: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  StringManager.mySkills,
                  style: getBoldStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\nFaucibus neque scelerisque a ut fringilla commodo. \nCondimentum quam tortor facilisi enim. Et scelerisque \nconsequat mattis tellus volutpat sed enim. Mi, bibendum \nsed quis aliquet ultricies aliquet eu. Lacus mattis dolor \nurna, in.',
                      style: getRegularStyle(
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            right: 0,
            child: Image.asset(
              AssetManager.skill3D,
              scale: 2.5,
            ),
          ),

          Positioned(
            top:300,
            left: 0,
            right: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height /2 ,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                          StringManager.languagesIUse,
                          style: getBoldStyle(
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Wrap(
                          children: const [
                            LogoContainer(
                              title: 'Dart.png',
                              text: 'Dart',
                            ),
                            LogoContainer(
                              title: 'Java.png',
                              text: 'Java',
                            ),
                            LogoContainer(
                              title: 'Kotlin.png',
                              text: 'Kotlin',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          StringManager.toolsIUse,
                          style: getBoldStyle(
                            fontSize: 25,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Wrap(
                          children: const [
                            LogoContainer(
                              title: 'Flutter.png',
                              text: 'Flutter',
                            ),
                            LogoContainer(
                              title: 'Firebase.png',
                              text: 'Java',
                            ),
                            LogoContainer(
                              title: 'VSCode.png',
                              text: 'VSCode',
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Wrap(
                            children: const [
                              LogoContainer(
                                title: 'Figma.png',
                                text: 'Figma',
                              ),
                              LogoContainer(
                                title: 'GitHub1.png',
                                text: 'Github',
                              ),
                              LogoContainer(
                                title: 'Git.png',
                                text: 'Git',
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                  ],
                ),
              ),
            ),
            )
        ],
      ),
    );
  }
}

class DesktopSkill extends StatelessWidget {
  const DesktopSkill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: ColorManager.backgroundColor,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 700,
            color: ColorManager.primaryBlue,
          ),
          Positioned(
            left: -70,
            top: 0,
            child: Image.asset(
              AssetManager.ellipse,
              scale: 1,
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Image.asset(
              AssetManager.skill3D,
              scale: 1,
            ),
          ),
          Positioned(
            top: 30,
            left: 600,
            child: Image.asset(
              AssetManager.sideCirle,
              scale: 3,
            ),
          ),
          Positioned(
            right: 50,
            top: 60,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: 600,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      StringManager.mySkills,
                      style: getBoldStyle(
                        fontSize: 40,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: [
                        Text(
                          StringManager.lorem1,
                          style: getRegularStyle(
                            fontSize: 20,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      StringManager.languagesIUse,
                      style: getBoldStyle(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: const [
                        LogoContainer(
                          title: 'Dart.png',
                          text: 'Dart',
                        ),
                        LogoContainer(
                          title: 'Java.png',
                          text: 'Java',
                        ),
                        LogoContainer(
                          title: 'Kotlin.png',
                          text: 'Kotlin',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      StringManager.toolsIUse,
                      style: getBoldStyle(
                        fontSize: 25,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Wrap(
                      children: const [
                        LogoContainer(
                          title: 'Flutter.png',
                          text: 'Flutter',
                        ),
                        LogoContainer(
                          title: 'Firebase.png',
                          text: 'Java',
                        ),
                        LogoContainer(
                          title: 'VSCode.png',
                          text: 'VSCode',
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: Row(
                        children: const [
                          LogoContainer(
                            title: 'Figma.png',
                            text: 'Figma',
                          ),
                          LogoContainer(
                            title: 'GitHub1.png',
                            text: 'Github',
                          ),
                          LogoContainer(
                            title: 'Git.png',
                            text: 'Git',
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
