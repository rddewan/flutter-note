

import 'package:flutter/material.dart';

ScaffoldFeatureController<MaterialBanner, MaterialBannerClosedReason> buildMaterialBanner(BuildContext context, String message, VoidCallback callback) {
  return  ScaffoldMessenger.of(context)
          .showMaterialBanner(
            MaterialBanner(
              padding: const EdgeInsets.all(18.0),
              backgroundColor: Colors.pink,
              leading: const Icon(Icons.check, color: Colors.white,),
              content: Text(message, style: const TextStyle(fontSize: 18.0,color: Colors.white),), 
              actions: [
                TextButton(
                  onPressed: callback, 
                  child: const Text('ok', style: TextStyle(color: Colors.white),))
              ],
          ),
        );
}