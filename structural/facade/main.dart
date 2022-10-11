import 'balance_api_service.dart';
import 'crypto_api_service.dart';
import 'crypto_facade.dart';
import 'crypto_factory.dart';
import 'crypto_service.dart';
import 'database_service.dart';
import 'user_service.dart';
import 'xml_service.dart';

void main(List<String> args) {
  // final _balanceApiService = BalanceApiService();
  // final _cryptoApiService = CryptoApiService();
  // final _databaseService = DatabaseService();
  // final user = UserService(_databaseService);

  
  // final c1 = XmlService(_balanceApiService, _cryptoApiService);
  // c1.buy(user.getUserId(), 100);

  // final c2 = CryptoFactory('BTC') as CryptoService;
  // c2.buy(user.getUserId(), 5000);

  final c1 = CryptoFacade();
  c1.buyCrypto('BTC', 4000);



}