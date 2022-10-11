
abstract class Product {
  void create();
  
}

abstract class FoodProduct {
  void cook();
}

class ProductPhone implements Product {
  @override
  void create() {
    print("Product Phone is created");
  }

}

class ProductTv implements Product {
  @override
  void create() {
    print("Product TV is created");
  }
}

class ProductNoodles implements FoodProduct {
  @override
  void cook() {
    print("product Noodles is created");
  }

}


abstract class ProductFactory {

  Product createProduct();  

}

abstract class FoodProductFactory {

   FoodProduct createFoodProduct();

}


class Tv extends ProductFactory {
   
  @override
  Product createProduct() {
    return ProductTv();
  }
  
}

class Noodles extends FoodProductFactory {
  @override
  FoodProduct createFoodProduct() {
    return ProductNoodles();
  }

}

void main(List<String> args) {

  final f1 = Tv()..createProduct().create();
   

  final f2 = Noodles()..createFoodProduct().cook();
  
  
  
}