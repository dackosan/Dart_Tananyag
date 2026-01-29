import 'dart:io';

void main() {
  print("Írj be egy mondatot: ");
  var mondat = stdin.readLineSync()!;

  List<String> mondatLista = mondat.split(" ");
  var forditottLista = mondatLista.reversed.toList();

  print(forditottLista.join(" "));
}
