
import 'crypto_factory.dart';

abstract class CryptoService implements CryptoFactory {

  void buy(String userId, double amount);
}