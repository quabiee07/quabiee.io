import 'package:flutter/material.dart';

import '../../../models/project.dart';
import '../../../res/manager.dart';


class ProjectCard extends StatefulWidget {
  const ProjectCard({
    Key? key,
    required this.index,
    this.pressed,
  }) : super(key: key);
  final int index;
  final Function()? pressed;

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.pressed,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            isHover
                ? BoxShadow(
                    offset: const Offset(0, 20),
                    blurRadius: 10,
                    color: Colors.grey.withOpacity(0.5),
                  )
                : const BoxShadow(),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              projects[widget.index].image,
              fit: BoxFit.fill,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      projects[widget.index].category.toUpperCase(),
                      style: getMediumStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 16 / 2,
                    ),
                    Text(projects[widget.index].title,
                        style:
                            getBlackStyle(fontSize: 20, color: Colors.black)),
                    const SizedBox(height: 16),
                    const Text(
                      'Source Code',
                      style:
                          TextStyle(decoration: TextDecoration.underline),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
