import 'dart:io';

void main() {
  print("Írj be egy számot: ");
  var szamEgy = int.parse(stdin.readLineSync()!);

  print("Írj be egy számot: ");
  var szamKetto = int.parse(stdin.readLineSync()!);

  if (szamEgy > szamKetto) {
    for (var i = szamKetto; i <= szamEgy; i++) {
      if (i % 2 == 0) {
        print("${i} - páros");
      } else {
        print("${i} páratlan");
      }
    }
  } else {
    for (var i = szamEgy; i <= szamKetto; i++) {
      if (i % 2 == 0) {
        print("${i} - páros");
      } else {
        print("${i} páratlan");
      }
    }
  }
}
