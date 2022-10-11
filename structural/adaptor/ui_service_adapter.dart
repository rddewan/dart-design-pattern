
import 'dart:io';

import 'data/json_data.dart';
import 'data/xml_data.dart';
import 'panda_app.dart';
import 'package/ui_service.dart';

class UIServiceAdaptor implements PandaApp {
  final UIService _uiService;

  UIServiceAdaptor(this._uiService);
  
  @override
  void showMenu(XmlData data) {
    final result = convertToJsonData(data);
    _uiService.showMenu(result);   
    
  }

  @override
  void showProduct(XmlData data) {
    final result = convertToJsonData(data);
    _uiService.showProduct(result);
   
  }

  JsonData convertToJsonData(XmlData data) {
    return JsonData(data.id, data.name);
  }

  @override
  void upload(File file) {
    // base 64

    print('uploading file');
    
    
  }


  
}