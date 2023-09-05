import 'package:flutter/material.dart';

class CardPlanetData {
  final String title;
  final String subtitle;
  final ImageProvider image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;

  const CardPlanetData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
  });
}

class CardPlanet extends StatelessWidget {
  const CardPlanet({required this.data, Key? key}) : super(key: key);

  final CardPlanetData data;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
