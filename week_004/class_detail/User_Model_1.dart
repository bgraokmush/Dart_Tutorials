//tüm sınıflar, obje sınıfından türer
class User extends Object {
  //Null olabilir demek için ? yazıyoruz sonradan final olacak
  late final String name;
  late int money;
  late final String userCode;
  // _ kullanırsan private yaparsın
  late final int _id;
  int? age;
  String? city;

  User(String name, int money, {int? age, String? city, required int id}) {
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    //eğer empty gelirse ist olarak gör
    this.userCode = (city ?? 'ist') + name;
  }

  int getId() {
    return _id;
  }
}
