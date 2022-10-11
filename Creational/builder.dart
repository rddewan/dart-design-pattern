
class Pizza {
  int? _diameter;
  String? _name;
  String? _crust;
  String? _cheese;
  Set<String>? _topping;

  Pizza(PizzaBuilder builder) {
    _diameter = builder._diameter;
    _name = builder._name;
    _crust = builder._crust;
    _cheese = builder._cheese;
    _topping = builder._topping;

  }
  
  String? get crust => _crust;
  

  @override
  String toString() {    
    return "Pizza: $_diameter $_name $_crust $_cheese $_topping";
  }

}

class PizzaBuilder {
  int _diameter;
  String _name;
  String? _crust;
  String? _cheese;
  Set<String>? _topping;
  
  PizzaBuilder(this._diameter, this._name,);

  String? get crust => _crust;
  void set crust(String? value) {
    _crust = value;
  }

  String? get cheese => _cheese;
  void set cheese(String? value) {
    _cheese = value;
  }

  Set<String>? get topping => _topping;
  void set topping(Set<String>? value) {
    _topping = value;
  }

  Pizza build() {
    return Pizza(this);
  }

}


