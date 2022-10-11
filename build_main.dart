import 'Creational/builder.dart';

void main(List<String> args) {
  final builder = PizzaBuilder(12, "Hot Spicy");
  final p1 = builder.build(); 
  print(p1);

  final builder2 = PizzaBuilder(12, "Hot Spicy");
  builder2.crust = "Tick";
  builder2.topping = Set.from(["Extra cheese, chilly, salt,"]);
  final p2 = builder2.build(); 
  print(p2);
}