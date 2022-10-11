
import 'dart:io';

import 'data/xml_data.dart';
import 'google_service_adapter.dart';
import 'package/google_drive_service.dart';
import 'panda_app_impl.dart';
import 'package/ui_service.dart';
import 'ui_service_adapter.dart';

void main(List<String> args) {

  final app = UIServiceAdaptor(UIService());
  app.showMenu(XmlData(1, 'name'));
  app.showProduct(XmlData(1, 'name'));
  final file = File('path');
  app.upload(file);

  final upload = GoogleServiceAdaptor(GoogleDriveService());
  upload.upload(file);

  

  // final ui = UIServiceAdaptor(UIService());
  // ui.showMenu(XmlData(1, 'name'));
  // ui.showProduct(XmlData(1, 'name'));

}