//Singleton class
class ProductConfig {
  static final ProductConfig instance = ProductConfig._('AAAA');

  final String apiKey;

  //sadece bu dosyadakiler görür
  ProductConfig._(this.apiKey);
}

class ProductLazySingleton {
  static ProductLazySingleton? _instance;

  static ProductLazySingleton get instance {
    if (_instance == null) {
      _instance = ProductLazySingleton._init();
    }
    return _instance!;
  }

  ProductLazySingleton._init();
}
