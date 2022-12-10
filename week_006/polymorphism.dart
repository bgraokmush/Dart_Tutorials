void main(List<String> args) {
  IUser user = Turk();
  user.sayName();

  user = Eng();
  user.sayName(); 
}

abstract class IUser {
  final String name;
  IUser({
    required this.name,
  });
  void sayName();
}

class Turk implements IUser {
  @override
  String get name => 'Bugra';

  @override
  void sayName() {
    print('Selam ben, $name');
  }
}

class Eng implements IUser {
  @override
  String get name => 'John';

  @override
  void sayName() {
    print('Hello, my name is $name');
  }
}
