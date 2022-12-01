void main(List<String> args) {
  int money = 5;

  money += 1;
  money++;
  money--;

  String name = 'bugra';
  String surName = 'Okumus';
  print('$name -> $surName');

  if (name == 'bugra') {}
  if (name != 'bugra') {}
  if (name.length > 'bugra'.length) {}
  if (name.length < 'bugra'.length) {}
  if (name.length >= 'bugra'.length) {}
  if (name.length <= 'bugra'.length) {}

  const int appleMoney = 20;
  const double disccount = 2.5;

  int myMoney = 30;
  //Bölmede küsürat kısmını yuvarlamanı sağlıyor
  myMoney = myMoney - (appleMoney ~/ disccount);

  print(myMoney % 2 == 0 ? 'sayınız çift' : 'Sayınız tek');
  print(myMoney.isEven
      ? 'Sayınız çift -> $myMoney'
      : 'sayınız tek  ->$myMoney'); //Çift mi
  print(myMoney.isOdd
      ? 'Sayınız tek -> $myMoney '
      : 'sayınız çift-> $myMoney'); //tek mi?
}
