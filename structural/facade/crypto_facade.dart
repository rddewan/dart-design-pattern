
import 'crypto_factory.dart';
import 'crypto_service.dart';
import 'database_service.dart';
import 'user_service.dart';

class CryptoFacade {
  late DatabaseService _databaseService;
  late UserService _userService;

  CryptoFacade() {
    _databaseService = DatabaseService();
    _userService = UserService(_databaseService);
  }

  void buyCrypto(String coin, double amount) {
    final c1 = CryptoFactory(coin) as CryptoService;
    c1.buy(_userService.getUserId(), amount);
  }
  

}