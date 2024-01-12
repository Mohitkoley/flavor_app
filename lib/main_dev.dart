import 'package:flavor_app/falvor/flavor_config.dart';
import 'package:flavor_app/screens/my_home_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  FlavorConfig.createInstance(flavor: Flavor.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '[Dev] Flavor app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      ),
      home: const MyHomePage(),
    );
  }
}
