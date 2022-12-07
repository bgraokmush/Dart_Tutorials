class NewUser {
  //Null olabilir demek için ? yazıyoruz sonradan final olacak
  late final String name;
  int _money;
  late final String userCode;
  int? age;
  String? city;

  NewUser(this.name, this._money, {this.age, this.city}) {
    this.userCode = (city ?? 'ist') + name;
  }

  //get Money
  int get money => _money;

  //Set Money
  set money(int? money) {
    _money = money == null ? 0 : money;
  }
}

extension NewUserControlExtension on NewUser {
  void controlName() {
    print(name);
  }
}
