//Single responsibility Principle

void main(List<String> args) {}

class UserManager {
  String name;
  String language;

  UserManager({
    required this.name,
    required this.language,
  });

  void changeUserName(String name) {
    this.name = name;
  }

  //void changeLocalization(){} -> alakasız işlemler yapma
}

class UserLocalization {
  final UserManager uManager;

  UserLocalization({
    required this.uManager,
  });

  void updateNameAndLocalization(String, name, String lang) {
    uManager.changeUserName(name);
    changeLocalization(lang);
  }

  void changeLocalization(String lang) {
    uManager.language = lang;
  }
}

//----------------------------------------------------------------

class Product {
  final String name;
  final String money;
  Product({
    required this.name,
    required this.money,
  });
}

class ProductCategory extends Product {
  final String category;
  ProductCategory(this.category, {required super.name, required super.money});
}

//----------------------------------------------------------------
