
import 'dart:ui';
import 'package:flutter/material.dart';

class DeviceInfo {
  static double getDeviceWidth() {    
    var physicalScreenSize = window.physicalSize;
    return  physicalScreenSize.width;    
  }  
}