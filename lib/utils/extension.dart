import 'package:flavor_app/falvor/flavor_config.dart';

extension FlavorExt on Flavor {
  String get filePath {
    String envFolder = 'env/';
    switch (this) {
      case Flavor.dev:
        return '$envFolder.dev.env';
      case Flavor.staging:
        return '$envFolder.staging.env';
      case Flavor.prod:
        return '$envFolder.prod.env';
      default:
        return '$envFolder.dev.env';
    }
  }

  String get name {
    switch (this) {
      case Flavor.dev:
        return 'dev';
      case Flavor.staging:
        return 'staging';
      case Flavor.prod:
        return 'prod';
      default:
        return 'dev';
    }
  }
}
