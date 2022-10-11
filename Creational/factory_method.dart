
abstract class PackageFactory {

  Package register() {
    final package = createPackage();
    package.subscribe();
    return package;
  }  

  // factory method
  Package createPackage();
}

abstract class Package {
  void subscribe();
}

class GeneralPackage implements Package {
  @override
  void subscribe() {
    print("Subscribe to General Package");
  }

}

class SilverPackage implements Package {
  @override
  void subscribe() {
    print("Subscribe to Silver Package");
  }

}

class GoldPackage implements Package {
  @override
  void subscribe() {
    print("Subscribe to Gold Package");
  }

}

class DiamondPackage implements Package {
  @override
  void subscribe() {
    print("Subscribe to Diamond Package");
  }

}

class SilverPackageSignUp extends PackageFactory {
  @override
  Package createPackage() {
    return SilverPackage();
  }
 
}

class GoldPackageSignUp extends PackageFactory {
  @override
  Package createPackage() {
   return GoldPackage();
  }  

}

class DiamondPackageSignUp extends PackageFactory {
  @override
  Package createPackage() {
    return DiamondPackage();
  } 



}

void main(List<String> args) {
  final p1= SilverPackageSignUp();
  p1.register();

  final p2 = DiamondPackageSignUp();
  p2.register();
  
}