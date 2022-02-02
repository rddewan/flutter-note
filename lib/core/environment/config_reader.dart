import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:note/core/environment/environment.dart';

/* 
  this class is a helper class to read the json config file from config folder
*/
abstract class ConfigReader {
  static Map<String, dynamic>? _config;

  //base on the param Enviroment [dev,uat,prod] we read a different json file
  static Future<void> initialize(Environment env) async {
    final String configString;
    switch (env) {
      case Environment.dev:
        configString = await rootBundle.loadString('config/app_config_dev.json');
        _config = json.decode(configString) as Map<String, dynamic>;
        break;
      case Environment.uat:
        configString = await rootBundle.loadString('config/app_config_uat.json');
        _config = json.decode(configString) as Map<String, dynamic>;
        break;
      case Environment.prod:
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