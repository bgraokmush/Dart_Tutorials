import 'class_detail/User_Model_1.dart';
import 'class_detail/User_Model_2.dart';

void main(List<String> args) {
  print('-------------' * 5);

  User user1 = new User('Bugra', 1200, age: 20, city: 'Elazıg', id: 12);
  User user2 = new User('Eda', 6500, age: 20, city: 'Elazıg', id: 13);
  User user3 = new User('Yusuf', 122, id: 14);
  print('${user1.name} <3 ${user2.name}');
  print(user3.userCode);

  if (user3.getId() == 14) {
    user3.money += 5;
    print(user3.money);
  }

  NewUser newUser = new NewUser('BugraNew', 5500);
  newUser.money += 5;
  print(newUser.money);

  print('-------------' * 5);
  print(newUser.toString());
}
