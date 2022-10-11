
import 'database_service.dart';

class UserService {
  final DatabaseService _databaseService;

  UserService(this._databaseService);

  

  String getUserId() {
    return _databaseService.getUserId();
  }
}