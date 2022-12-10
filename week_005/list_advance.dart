void main(List<String> args) {
  final carItems = [
    CarModel(
        category: CarModels.audi,
        name: 'audi A5',
        money: 1465,
        isSecondHand: false),
    CarModel(
        category: CarModels.toyota,
        name: 'Auris',
        money: 1550,
        isSecondHand: false),
    CarModel(
        category: CarModels.bmw,
        name: 'bmw x5',
        money: 200,
        isSecondHand: true),
  ];

  //secondHand olanların sayısını listelediğimiz alan
  final resultCount =
      carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  //yeni araba geldi, bu bizde var mı ?
  final newCar = CarModel(
      category: CarModels.audi,
      name: 'audi A5',
      money: 1465,
      isSecondHand: false);

  final isHaveCar = carItems.contains(newCar);

  print(isHaveCar == true ? 'Aynı arabadan var' : 'Yok, bu yeni');

  // bana bw olan ve parası 20 den büyük olan arabaları yazdır
  final resultBmwMore20 = carItems
      .where(
          (element) => element.category == CarModels.bmw && element.money > 20)
      .join();

  //Sadece isimleri yan yana göster
  final carNames = carItems.map((e) => e.name).join(", ");
  print(carNames);

  // mercedes var mı ? -> Try catch işlemi
  try {
    final mercedesCar = carItems
        .singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
  } catch (e) {
    //Sorunu çözmek için kullanılamaz
    print('Aradığını bulamadım');
  } finally {
    print('İşlem tamamlandı...');
  }

  // yeni gelen araba, kaçıncı sırada
  final index = carItems.indexOf(newCar);
  print(index); //class içindeki eşitleme custom operatör olmasaydı, yapılmazdı

  //Yeni araba ekleme
  carItems.add(CarModel(
      category: CarModels.mercedes,
      name: '2022',
      money: 1500,
      isSecondHand: false));

  //Arabaları sırala
  carItems.sort((first, second) => first.money.compareTo(second.money));
  print(carItems);

  //Son ekleneni silme
  carItems.removeWhere((element) => element.category == CarModels.mercedes);
}

void claculateToUser(List<CarModel> items) {
  final newItems = items.map((e) {
    if (e.category == CarModels.bmw) {
      e.category == CarModels.mercedes;
    }
    if (e.isSecondHand) {
      e.isSecondHand = false;
    }
  });
}

class CarModel {
  CarModels category;
  final String name;
  final double money;
  String? city;

  bool isSecondHand;
  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });

  ///Yeni operatör sınıftan üretilen nesnelerin aynı olup olmadığını
  ///incelememize yardımcı oluyor. sorun çıkabilir. `Referans` olduğu
  ///için.
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CarModel &&
        other.category == category &&
        other.name == name &&
        other.money == money &&
        other.city == city &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        name.hashCode ^
        money.hashCode ^
        city.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    // TODO: implement toString
    return '$name = $money';
  }
}

enum CarModels { bmw, toyota, audi, mercedes }
