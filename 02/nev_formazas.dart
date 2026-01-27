import 'dart:io';

void main() {
  print("Írja be a nevét: ");
  var nev = stdin.readLineSync()!.split(" ");

  print(
    "Neve : ${nev[0][0].toUpperCase()}${nev[0].substring(1)} ${nev[1][0].toUpperCase()}${nev[1].substring(1)}",
  );
}
