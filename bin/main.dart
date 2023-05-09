import 'package:script_compare_xlsx_with_json/difference_between_maps.dart';
import 'package:script_compare_xlsx_with_json/readJson.dart';
import 'package:script_compare_xlsx_with_json/read_xlsx.dart';

void main(List<String> arguments) {
  final xlsxMap = readXlsx(
    'assets/file.xlsx',
    keyColumnIndex: 0,
    valueColumnIndex: 2,
  );
  final jsonMap = readJson('assets/file2.json');

  differenceBetweenMaps(
      firstMap: xlsxMap, secondMap: jsonMap, trimValues: true);
}
