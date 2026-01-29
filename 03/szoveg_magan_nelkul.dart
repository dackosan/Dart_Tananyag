import 'dart:io';

void main() {
  print("Írj be egy mondatot: ");
  var mondat = stdin.readLineSync()!;

  var maganhangzok = ["a", "e", "u", "i", "o"];

  maganhangzok.forEach((item) {
    mondat = mondat.replaceAll(item, " ");
  });

  print(mondat);
}
