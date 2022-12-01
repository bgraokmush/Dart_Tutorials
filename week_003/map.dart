void main(List<String> args) {
  //Müşteri adı ahmet ve parası 20

  Map<String, int> person = {
    'Bugra': 15,
    'Eda': 25,
    'Yusuf': 10,
  };

  //edanın ne kadar bakiyesi var
  print('Eda nın parası -> ${person['Eda']}');

  //Müşteri isimleri
  for (var item in person.keys) {
    print('${item} -> ${person[item]}');
  }

  final Map<String, List<int>> bgBank = {
    'Bugra': [100, 250, 300],
    'Eda': [200, 150, 130],
    'Yusuf': [40, 150, 25]
  };

  print('--------------------------');

  for (var item in bgBank.keys) {
    for (var money in bgBank[item]!) {
      //userdaki hesapları dolaşıyoruz
      if (money > 150) {
        print('${item} -> Kredin Hazır');
        break;
      }
    }
  }

  print('--------------------------');
  print('Müşterilerin Toplam Parası');
  int result;
  for (var item in bgBank.keys) {
    result = 0;
    for (var money in bgBank[item]!) {
      result += money;
    }
    print('${item} -> $result');
  }
}
