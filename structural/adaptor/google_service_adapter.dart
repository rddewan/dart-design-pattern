

import 'dart:io';

import 'package/google_drive_service.dart';

import 'upload.dart';

class GoogleServiceAdaptor implements Upload {
  final GoogleDriveService _service;

  GoogleServiceAdaptor(this._service);
  
  

  @override
  void upload(File file) {
    /// get auth
    /// login to google 
    /// // convert to file and Uint8List it to google upload service
    final data  =  file.readAsBytesSync(); 

    _service.upload(data, 'folder');
  }
  
}