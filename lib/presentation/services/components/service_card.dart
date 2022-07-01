import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/service.dart';
import '../../../res/manager.dart';


class ServiceCard extends StatefulWidget {
  const ServiceCard({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  State<ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool isHover = false;
  Duration duration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      hoverColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16 * 2),
        height: 256,
        width: 256,
        decoration: BoxDecoration(
          color: services[widget.index].color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              blurRadius: 10,
              color: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: AnimatedContainer(
                  padding: const EdgeInsets.all(16 * 1.5),
                  curve: Curves.bounceInOut,
                  height: isHover ? 256 : 120,
                  width: isHover ? 256 : 120,
                  decoration: BoxDecoration(
                    borderRadius: isHover
                        ? BorderRadius.circular(15)
                        : BorderRadius.circular(25),
                    color: ColorManager.primaryBlue,
                  ),
                  duration: duration,
                  child: SizedBox(
                      child: SvgPicture.asset(
                    services[widget.index].image,
                  ))),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  services[widget.index].title,
                  style: getSemiBoldStyle(
                      fontSize: 18,
                      color: isHover ? Colors.white : Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

