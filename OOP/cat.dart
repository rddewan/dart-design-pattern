

import 'animal.dart';

class Cat extends Animal {


  void poo() {
    super.eat();
    print('cat poo');
  }

  void catInfo() {
    print('I am a cat and my age is $age and my name is $name');
  }

  @override
  void eat() {
    print('cat can eat ');

  }


}