void main(List<String> args) {
  final customerMouse = Mouses.a4;

  switch (customerMouse) {
    case Mouses.magic:
      print('Mouse $customerMouse');
      break;
    case Mouses.apple:
      print('Mouse $customerMouse');
      break;
    case Mouses.logitech:
      print('Mouse $customerMouse');
      break;
    case Mouses.a4:
      print('Mouse ${customerMouse.name}  -> ${customerMouse.index}');
      print('Mouse ${customerMouse.runtimeType}  -> ${customerMouse.index}');
      print('Mouse ${customerMouse.hashCode}  -> ${customerMouse.index}');
      break;
  }

  if (customerMouse.isCheckName('a4')) {
    print('aa');
  }
}

enum Mouses {
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
