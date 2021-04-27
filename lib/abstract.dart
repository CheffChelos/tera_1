class User {
  int _age;
  String firstName, lastName;

  User({this.firstName, this.lastName});


  String get fullName {
    return '$firstName $lastName';
  }

  set setAge(int val) {
    _age ??= val;
  }

  String get userInfo => '$firstName $lastName $_age y.o.';
}
int cache;

class Person {
  final String firstName;
  final int age;

  Person(String name, [int yo = 18])
      : firstName = name,
        age = yo;

  factory Person.fabric(String name) =>
      cache == null ? Person(name) : Person(name, cache);
}

mixin Constructorless {
  int age;
  String name;

  set changeName(String val) => name = val;
}

class Child with Constructorless {
  bool employed;
  String sex;

  Child(this.employed, [this.sex = 'no']) : assert(employed != null);
}
enum Colors { yellow, green, blue, red }

List<String> names = ['Sam', 'David', 'Samanta', 'Jessica'];
List surnames = <String>['Horn', 'Coleman', 'Randleman', 'Verdum'];
Map<String, dynamic> table = {
  'firstName': 'Sam',
  'lastName': 'Horn',
  'age': 22,
  'employed': true
};

void collections() {
  print('${Colors.red} has index: ${Colors.red.index}');
  print(Colors.values);
  Colors.values.forEach((element) {
    print(element);
  });
  names.add('Kevin');
  names.map((e) => e.toLowerCase());
  print(table['firstName']);
}