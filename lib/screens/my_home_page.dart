import 'package:flavor_app/falvor/flavor_config.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Falvor ${FlavorConfig.instance.flavor.name}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Falvor ${FlavorConfig.instance.values.baseUrl} \n ${FlavorConfig.instance.values.apiKey}',
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
