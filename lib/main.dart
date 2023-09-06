import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
import 'package:lottie/lottie.dart';
import 'package:practica1/card_plantet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final data = [
    CardPlanetData(
      title: "Leonardo Rivera",
      subtitle: "Computer Systems engineering undergraduate",
      image: const AssetImage("assets/images/tecnm-celaya.png"),
      backgroundColor: const Color.fromARGB(0, 43, 255, 0),
      titleColor: Colors.black,
      subtitleColor: const Color.fromARGB(255, 173, 45, 45),
      background: LottieBuilder.asset("assets/animation/anim1.json"),
    ),
    CardPlanetData(
      title: "Instituto tecnològico de celaya",
      subtitle: "La tècnica por un Mèxico mejor",
      image: const AssetImage("assets/images/tecnm-celaya.png"),
      backgroundColor: Colors.red,
      titleColor: const Color.fromARGB(255, 130, 26, 26),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/anim1.json"),
    ),
    CardPlanetData(
      title: "vscode no corre en hyprland :(",
      subtitle: "electron no es bueno para desktop",
      image: const AssetImage("assets/images/tecnm-celaya.png"),
      backgroundColor: Colors.blue,
      titleColor: const Color.fromARGB(255, 130, 26, 26),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/animation/anim1.json"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ConcentricPageView(
            itemCount: data.length,
            colors: data.map((e) => e.backgroundColor).toList(),
            itemBuilder: (int index) => CardPlanet(data: data[index])));
  }
}
