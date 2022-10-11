
import 'balance_api_service.dart';
import 'crypto_api_service.dart';
import 'crypto_service.dart';

class BitcoinService extends CryptoService {
  final BalanceApiService _balanceApiService;
  final CryptoApiService _cryptoApiService;

  BitcoinService(this._balanceApiService, this._cryptoApiService);


  @override
  void buy(String userId, double amount) {
    final balance = _balanceApiService.userBalance(userId);
    if(balance >= amount) {
      final response = _cryptoApiService.buyCrypto(userId, amount, 'BTC');
      print(response);

    }
    else {
      print('balance is  not enough');
    }
  }

}