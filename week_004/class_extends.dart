void main(List<String> args) {
  final userNormal = User('Bugra', 15);

  userNormal.sayMoneyWithCompany();

  final bankUser = BankUser(56, 'Bugra', 45);
  bankUser.sayMoneyWithCompany();
}

//Tüm müşterilerin paralarını görbilmelerini ama benim banka ismimle



abstract class IUser {
  late final String name;
  late final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompany() {
    print('Bugra -> $money paranız var');
  }
}

class User extends IUser {
  User(super.name, super.money);

  @override
  void sayMoneyWithCompany() {
    print('Normal User -> $money');
  }
}

class BankUser extends IUser {
  final int bankingCode;

  BankUser(this.bankingCode, super.name, super.money);
}

class SpecialUser extends BankUser {
  final int discountCode;

  SpecialUser(this.discountCode, super.bankingCode, super.name, super.money);
}


