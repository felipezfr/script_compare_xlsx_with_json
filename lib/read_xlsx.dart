import 'dart:io';

import 'package:excel/excel.dart';

Map<String, dynamic> readXlsx(String assetPath,
    {required int keyColumnIndex, required int valueColumnIndex}) {
  var file = assetPath;
  var bytes = File(file).readAsBytesSync();
  var excel = Excel.decodeBytes(bytes);

  final table = excel.tables[excel.tables.keys.first]!;

  print('Table with ${table.maxCols} columns and ${table.maxRows} rows.\n');

  Map<String, dynamic> xlsxMap = {};
  for (var row in table.rows) {
    final keyRowData = row[keyColumnIndex];
    // print('${tagRowData?.value}');
    final valueRowData = row[valueColumnIndex];
    // print('${esRowData?.value}');

    final Map<String, dynamic> map = {
      keyRowData?.value.toString() ?? 'null': valueRowData?.value.toString()
    };

    xlsxMap.addAll(map);
  }
  // print(xlsxMap);
  return xlsxMap;
}
