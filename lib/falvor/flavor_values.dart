part of 'flavor_config.dart';

class FlavorValues {
  FlavorValues(
    this._baseUrl,
    this._apiKey,
  );
  final String _baseUrl;
  final String _apiKey;

  String get baseUrl => _baseUrl;
  String get apiKey => _apiKey;

  factory FlavorValues.createInstance(Map<String, String> envMap) {
    return FlavorValues(
      envMap['BASE_URL']!,
      envMap['API_KEY']!,
    );
  }
}
