enum PackageType{silver, gold, diamond}


abstract class PackageFactory {

  factory PackageFactory(PackageType type) {
    switch (type) {
      case PackageType.silver:
        return SilverPackage();
      case PackageType.gold:
        return GoldPackage();
      case PackageType.diamond:
        return DiamondPackage();
      default:
       return GeneralPackage();
    }
  }
}

abstract class Package implements PackageFactory {
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

void main(List<String> args) {
  final p1 = PackageFactory(PackageType.silver) as Package;
  p1.subscribe();
}