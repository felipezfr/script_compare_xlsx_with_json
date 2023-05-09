import 'dart:convert';
import 'dart:io';

Map<String, dynamic> readJson(String assetPath) {
  // File fileToCompare = File('assets/es-es.json');
  File fileToCompare = File(assetPath);
  String jsonString = fileToCompare.readAsStringSync();
  Map<String, dynamic> jsonToCompare = json.decode(jsonString);

  // print(jsonToCompare);
  return jsonToCompare;
}
