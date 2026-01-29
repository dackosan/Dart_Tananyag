import 'dart:io';

void main(){
  print("Írj be egy számot: ");
  var szam = stdin.readLineSync()!;

  List<String> szamjegyek = szam.split("");

  szamjegyek.forEach((sz) {
    var intSZ = int.parse(sz);
    
    print("${intSZ} -> ${intSZ*intSZ}");
  });
}