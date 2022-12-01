void main(List<String> args) {
  final int money = 15;
  String userName = 'Bugra';
  //bool => 0,1
  print('$money -> $userName');

  //if else
  bool isCustomerRich = true;

  if (money >= 15) {
    isCustomerRich = true;
  } else {
    isCustomerRich = false;
  }

  //isEmpty
  bool isEmpty = userName.isEmpty ? true : false;

  print(isEmpty);
}
