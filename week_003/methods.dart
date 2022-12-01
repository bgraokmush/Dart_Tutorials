void main(List<String> args) {
  //Müşterinin parasını kontrol et
  final int userMoney = 0;
  controlUserMoney(userMoney, 2);

  final int newUserMoney = 10;
  controlUserMoney(newUserMoney, 8);

  //Kullanıcının kaç dolar parası var
  int dolar = 18;
  int money = 1250;
  print(convertToDolar(money, currency: money) > 10
      ? '10 dolardan fazla var -> ${convertToDolar(money, currency: money)}'
      : '10 dolardan az var -> ${convertToDolar(money, currency: money)}');

  final newResult = convertToDolar(100);

  print(newResult);

  final result3 = convertToEuro(userMoney: 500, euroMoney: 15);
}

void controlUserMoney(int userMoney, int minimumValue) {
  print(userMoney > minimumValue ? 'Parası var' : 'Bakiye sıfır');
}

//Eğer parametre değeri full girilmez ise currency 14 al
int convertToDolar(int userMoney, {int currency = 14}) {
  return (userMoney ~/ currency);
}

int convertToEuro({required int userMoney, int euroMoney = 14}) {
  return userMoney ~/ euroMoney;
}

