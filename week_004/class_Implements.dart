void main(List<String> args) {
  Student student = new Student('Bugra', '20', 41);
}

abstract class IStudent {
  final String name;
  final String age;

  int? schoolId;

  void sayAge() {}

  IStudent(
    this.name,
    this.age,
    this.schoolId,
  );
}

class Student implements IStudent {
  final String name;
  final String age;
  int? schoolId;

  Student(
    this.name,
    this.age,
    this.schoolId,
  );

  @override
  void sayAge() {
    print(age);
  }
}
