import 'dart:io';

void main() {
  print("Írj be egy számot: ");
  var szam = stdin.readLineSync()!;

  List<String> szamjegyek = szam.split("");
  var total = 0;

  szamjegyek.forEach((sz) {
    var intSZ = int.parse(sz);
    total += intSZ;
  });

  print("Számjegyek átlaga: ${(total / szamjegyek.length).toStringAsFixed(2)}");
}
