

import 'data/xml_data.dart';
import 'panda_app.dart';

class PandaAppImpl implements PandaApp {


  @override
  void showMenu(XmlData data) {
    print('menu $data');
  }

  @override
  void showProduct(XmlData data) {
    print('product $data');
  }

 

}