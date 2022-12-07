void main(List<String> args) {
  final user = _User('Bugra', age: 21, 225);
  final user1 = _User('Bugra', age: null, 15);

  // *müşterinin yaşı 18 den küçük kontrolü
  if ((user.age ?? 0) < 18) {
    //age null ise default değer
  }

  if (user.age is int) {
    if (user.age! < 18) {
      // *force ediliyor
      print('Küçük');
      user.updateMoneyWithStr('TR');
    } else {
      user.updateMoneyWithNum(25);
    }
  }

  /* 
    *Kullanıcıların parası var ama paranın birimi değişken olabilir
    *parası olanın birimi isim de olabilir, değer de olabilir
    *tr yazacak veya 15 olacak
    *Ekranda göster
  */

  print(user.moneyType is String
      ? (user.moneyType as String) + 'A'
      : (user.moneyType as int) + 2);

//Müşteri : banka sınıfından 2 kişinin parasını toplayop sonucunu söyler misin?
  final money1 = Bank(45, 12);
  final money2 = Bank(30, 12);
  print(money1 + money2);

  //Bankaya gelen müşterilerin id si aynı olanlar aynı müşteri olmalı
  print(money1.toString());
  print(money1 == money2);

  // diğer bankadan bir modül aldık bunu ekleyip müşterinin parasını sorgula
  money1.calculateMoney(15);

  //müşteri adamın parasona 10 tl ekle ekrana döndür
  money1
    ..money += 10
    ..id = 25;

  print(money1);
  ;
}

class _User {
  final String name;
  final int id;
  int? age;

  dynamic moneyType;

  _User(this.name, this.id, {this.age});

  void updateMoneyWithStr(String data) {
    moneyType = data;
  }

  void updateMoneyWithNum(int data) {
    moneyType = data;
  }
}

//with dahil etme, birlikte kullanma anlamınageliyor
class Bank with BankMixin {
  int money;
  int id;

  Bank(this.money, this.id);

  /// Operatör Yazmak için burası kullanılıyor.
  /// Böylelikle `operator` anahtar kelimesi kullanılarak istenilen
  /// işlem gerçekleştirilebiliyor
  /// Örnek kullanım şu şekildedir [Bakınız]
  int operator +(Bank newBank) {
    return this.money + newBank.money;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + 'Bugra';
  }

  /// Eğer bankadaki kullanıcıların id si aynı ise, bu kullanıcılar
  /// birbirine `eşittir` ve aynı kullanıcılardır.
  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  void sayBankName() {
    print('$id numara hoş geldin!');
  }
}

// constructor yoksa class yapısı
mixin BankMixin {
  void sayBankName();
  void calculateMoney(int money) {
    print('money -> $money');
  }
}
