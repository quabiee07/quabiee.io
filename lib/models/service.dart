import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

List<Service> services = [
  Service(
    id: 1,
    title: 'UI/UX Design',
    image: 'design.svg',
    color: const Color(0xFFFFFFFF),
  ),
  Service(
    id: 2,
    title: 'Android Development',
    image: 'android.svg',
    color: const Color(0xFFFFFFFF),
  ),
  Service(
    id: 3,
    title: 'iOS Development',
    image: 'apple.svg',
    color: const Color(0xFFFFFFFF),
  ),
];
