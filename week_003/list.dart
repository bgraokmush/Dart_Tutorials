void main(List<String> args) {
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print('Müşteri 1 parası : ${moneys[0]}');

  //Gelen paraları büyük olana göre sırala
  moneys.sort();

  moneys.add(1200);
  moneys.insert(0, 5);
  print(moneys);

  //newMoneys = []; yapamam
  newMoneys.add(5); // ekleyebiliyorum çünkü metod Listeler referans tipi
  //newMoneys.clear(); -> listeyi temizler
  newMoneys.reversed.toList(); // referans tipibi sıfırladı
  newMoneys.clear();

  //girilen 100 müşterinin numarasına göre 5 tl ekle
  //Callback function destekliyro
  List<double> customerMoney = List.generate(100, (index) => index + 5);

  print(customerMoney);

  //Customers 100 30 40 60
  //35 tl den büyük olanları burada kredi verebiliriz yaz, küçük olanlara olmaz
  List<int> newCustomersMoney = [100, 30, 40, 60];

  for (var money in newCustomersMoney) {
    if (money > 35) {
      print('Paranız : $money, kredi çekebilirsin');
    } else {
      print('Paranız : $money, kredi  çekemezsiniz :/');
    }
  }

  newCustomersMoney.sort();
  for (var i = 0; i < newCustomersMoney.length; i++) {
    print('Müşteri parası $i -> ${newCustomersMoney[i]}');
    print(newCustomersMoney[i] > 35 ? 'Kredi Hazır' : 'kredi veremeyiz');
  }

  //Kullanılmamalı
  List<dynamic> user = [1, 'a', true];

  List<String> userNames = ['Bugra', 'Eda', 'İroş', 'Yusuf'];

  bool hasEda = userNames.contains('Eda');
  print(hasEda ? 'Eda var' : 'Eda yok');
}
