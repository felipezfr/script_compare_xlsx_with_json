List<String> differenceBetweenMaps(
    {required Map<String, dynamic> firstMap,
    required Map<String, dynamic> secondMap,
    bool? trimValues}) {
  List<String> valuesDifferents = [];
  firstMap.forEach((key, value) {
    if (secondMap.containsKey(key)) {
      final String mapToCompare = secondMap[key];

      if (trimValues != null && trimValues == true) {
        final firstValueTrim = mapToCompare.trim().replaceAll('\n', '');
        final secondValueTrim =
            value != null ? value.trim().replaceAll('\n', '') : value;

        if (firstValueTrim != secondValueTrim) {
          final string =
              'Key: $key \nOriginal:  \n"$firstValueTrim"\nChanged: \n"$secondValueTrim"\n';
          valuesDifferents.add(string);
          print(string);
        }
      } else {
        if (mapToCompare != value) {
          final string =
              'Key: $key \nOriginal:  \n"$mapToCompare"\nChanged: \n"$value"\n';
          valuesDifferents.add(string);
          print(string);
        }
      }
    }
  });

  return valuesDifferents;
}
