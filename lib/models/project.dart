import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Project {
  String image;
  String title;
  String category;
  Project({required this.image, required this.title, required this.category});
}

List<Project> projects = [
  Project(
    image: 'nft1.webp', 
    title: 'Crypto currency tracker app', 
    category: 'iOS Development'
  ),
   Project(
    image: 'nft2.webp', 
    title: 'Native android news app', 
    category: 'Android Development'
  ),
   Project(
    image: 'nft5.jpg', 
    title: 'Blockchain.com wallet Clone', 
    category: 'Android Development'
  ),
   Project(
    image: 'nft4.jpg',
    title: 'Academic Virtual Assistant', 
    category: 'UI/UX Design.'
  ),
  
  
];
