//singleton mimarisi

import 'model/product_config_model.dart';

void main(List<String> args) {
  calculateMoney(Product.money ?? 0);
  productNameChange();
  calculateMoney(Product.money ?? 0);

  //User class kullanarak product yap
  final user1 = User(name: 'Bugra', product: 'VVCompany');
  final newProduct = Product(user1.product);

  final newProduct2 = Product.bugra();
  final newProduct3 = Product.fromUser(user1);

  //Api bilgisini Öğrenme
  ProductConfig.instance.apiKey;
  //ProductConfig('BBB').apiKey; -> Yapılamaz

  ProductLazySingleton.instance;
}

//Solid uyumlu, unit test yapılabilir bir metod
void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl daha ekle');
    Product.money = Product.money! + 5;
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNameChange() {
  Product.money = null;
  //Product.companyName = " "; -> Yapılamaz
}

class Product {
  static int? money = 10;
  String name;
  Product(this.name);

  Product.bugra([this.name = 'Eda']);

  ///Factory method
  ///`Default parametre` işi için farklı bir
  ///boyut kazandırılıyor.
  factory Product.fromUser(User user) {
    return Product(user.name);
  }

  static const companyName = 'Bugra Bank';

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
    }
  }
}

class User {
  final String name;
  final String product;
  User({
    required this.name,
    required this.product,
  });
}
