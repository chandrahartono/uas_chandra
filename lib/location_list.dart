import 'dart:convert';

List<Location> parseLocations(String jsonStr) {
  final List<dynamic> parsed = json.decode(jsonStr);
  return parsed.map<Location>((item) => Location(
    code: item['code'],
    name: item['name'],
    city: item['city'],
    cityname: item['cityname'],
  )).toList();
}
