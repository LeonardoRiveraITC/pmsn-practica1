import 'package:flutter/material.dart';
import 'package:concentric_transition/concentric_transition.dart';
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
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  final data = const [
    CardPlanetData(
        title: "Leonardo Rivera",
        subtitle: "Computer Systems engineering undergraduate",
        image: AssetImage("assets/images/tecnm-celaya.png"),
        backgroundColor: const Color.fromARGB(0, 10, 56, 1),
        titleColor: Colors.black,
        subtitleColor: Colors.white),
    CardPlanetData(
        title: "Instituto tecnològico de celaya",
        subtitle: "xczxc",
        image: AssetImage("assets/images/tecnm-celaya.png"),
        backgroundColor: const Color.fromARGB(0, 10, 56, 1),
        titleColor: Colors.black,
        subtitleColor: Colors.white),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        itemCount: 1, // null = infinity
        physics: NeverScrollableScrollPhysics(),
        colors: <Color>[Colors.white, Colors.blue, Colors.red],
        itemBuilder: (int index) {
          return CardPlanet(data: data[index]);
        },
      ),
    );
  }
}
