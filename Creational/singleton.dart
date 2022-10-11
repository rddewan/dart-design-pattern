
class Person {
  final String name;

  Person(this.name);

  @override
  String toString() {    
    return "Person $name";
  }
  
}

class Car {
  late String name;
  static final Car _instance =  Car._internal();

  factory Car(name) {
    _instance.name = name;
    return _instance;

  }

  Car._internal();

  @override
  String toString() {    
    return "Person $name";
  }
  
}

void main(List<String> args) {
  final p1 = Person("Richard");
  final p2 = Person("Air");
  print("${p1.hashCode} ${p2.hashCode}");

  final c1 = Car("Honda");
  final c2 = Car("Toyota");
  final c3 = Car("Toyota");
  print("${c1.hashCode} ${c3.hashCode}");

}