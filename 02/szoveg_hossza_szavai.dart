import 'dart:io';

void main() {
  print("Írj egy mondatot: ");
  var mondat = stdin.readLineSync()!;

  var szavak = mondat.split(" ");
  var karakterek = mondat.split("");

  print("Szavak: ${szavak.length}");
  print("Karakterek: ${karakterek.length}");
}
