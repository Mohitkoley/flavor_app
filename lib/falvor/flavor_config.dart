import 'dart:io';
import 'package:flavor_app/utils/extension.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
part 'flavor_values.dart';

enum Flavor { dev, staging, prod }

class FlavorConfig {
  Flavor flavor;
  FlavorConfig({required this.flavor, required this.values});
  FlavorValues values;

  static FlavorConfig? _instance;

  static FlavorConfig get instance => _instance!;

  FlavorConfig._(this.flavor, this.values);

  static createInstance({required Flavor flavor}) async {
    await dotenv.load(
        fileName: flavor.filePath, mergeWith: Platform.environment);
    FlavorValues values = FlavorValues.createInstance(
      dotenv.env,
    );
    _instance = FlavorConfig._(flavor, values);
  }
}
