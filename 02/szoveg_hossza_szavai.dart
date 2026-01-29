import 'dart:io';

void main() {
  print("Írj egy mondatot: ");
  var mondat = stdin.readLineSync()!;

  var szavak = mondat.trim().split(" ");
  var karakterek = mondat.trim().split("");

  print("Szavak: ${szavak.length}");
  print("Karakterek: ${karakterek.length}");
}
