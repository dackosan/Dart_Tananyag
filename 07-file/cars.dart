import 'dart:io';

void main() {
  File file = File("07-file/cars.txt");
  String contents = file.readAsStringSync();
  var lines = contents.split(", ");

  file.writeAsStringSync("\nLada, 1980, Silver, 100", mode: FileMode.append);

  file = File("07-file/cars.txt");
  contents = file.readAsStringSync();
  lines = contents.split(", ");

  print(lines);
}
