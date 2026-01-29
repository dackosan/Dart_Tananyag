import 'dart:convert';
import 'dart:io';

void main() {
  print("Írj be egy szöveget: ");
  var szoveg = stdin.readLineSync()!;

  var karakterek = szoveg.split("");

  karakterek.forEach((c) {
    print("${c} - ${utf8.encode(c)}");
  });
}
