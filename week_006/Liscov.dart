//Liskov substitution principle
void main(List<String> args) {
  IDatabase database = SQL();
  /*
  *
  *
  *
  */
  database = Mongo();
  database.write();
}

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
}

//----------------------------------------------------------------
// Interface' lerin parçalanması

abstract class IUserOperation with IUserLocation, ILanguage {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void localization();
}

abstract class ILanguage {
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void localization() {
    // TODO: implement localization
  }
}

class User extends IUserOperation {
  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void language() {
    // TODO: implement language
  }

  @override
  void localization() {
    // TODO: implement localization
  }

  @override
  void read() {
    // TODO: implement read
  }

  @override
  void write() {
    // TODO: implement write
  }
}

//----------------------------------------------------------------
// Dependency Inversion Principle (DIP)

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraReader iphoneCameraReader;

  DeviceCameraManager({
    required this.iphoneCameraReader,
  });

  @override
  void readQR() {
    print(iphoneCameraReader);
  }
}

class IphoneCameraReader extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}
