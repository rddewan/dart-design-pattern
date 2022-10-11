
import 'balance_api_service.dart';
import 'bitcoin_service.dart';
import 'crypto_api_service.dart';
import 'xml_service.dart';

abstract class CryptoFactory {

  factory CryptoFactory(String type) {
    final BalanceApiService _balanceApiService = BalanceApiService();
    final CryptoApiService _cryptoApiService = CryptoApiService();
    switch (type) {
      case 'BTC':
        return BitcoinService(_balanceApiService, _cryptoApiService); 
      case 'XML':
        return XmlService(_balanceApiService, _cryptoApiService);                
        
      default:
       throw Exception('No implementation fount');
    }
  }

}