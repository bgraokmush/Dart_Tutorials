void main(List<String> args) {
  String name = 'Bugra';
  //is Admin kullanabiliyorsun
  print(name.isAdmin() ? 'Kullanıcı admin' : 'Kullanıcı adı -> $name');

  String? newName;
  newName.isAdmin();
}

//gelmez ise boş kabul et
extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return ((this ?? '')).toLowerCase() == 'admin';
  }
}
