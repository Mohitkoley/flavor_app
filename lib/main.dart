import 'package:flavor_app/falvor/flavor_config.dart';
import 'package:flavor_app/screens/my_home_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  FlavorConfig.createInstance(flavor: Flavor.prod);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flavor app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
      ),
      home: const MyHomePage(),
    );
  }
}
