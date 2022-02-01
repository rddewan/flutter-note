import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:note/core/enviroment/enviroment.dart';

/* 
  this class is a helper class to read the json config file from config folder
*/
abstract class ConfigReader {
  static Map<String, dynamic>? _config;

  //base on the parm Enviroment [dev,uat,prod] we read a different json file
  static Future<void> initialize(Enviroment env) async {
    final String configString;
    switch (env) {
      case Enviroment.dev:
        configString = await rootBundle.loadString('config/app_config_dev.json');
        _config = json.decode(configString) as Map<String, dynamic>;
        break;
      case Enviroment.uat:
        configString = await rootBundle.loadString('config/app_config_uat.json');
        _config = json.decode(configString) as Map<String, dynamic>;
        break;
      case Enviroment.prod:
        configString = await rootBundle.loadString('config/app_config_prod.json');
        _config = json.decode(configString) as Map<String, dynamic>;
        break;
      default:
        break;
    }    
    
  }

  // get the base url value from the config file
  static String getBaseUrl() {
    return _config?['base_api_url'] as String;
  }
 
}