import 'dart:io';

void main(){
  File file = File('08-erett/rendel.txt');
  List<String> contents = file.readAsLinesSync();
  
  List<Map<String, dynamic>> rendelesek = [];
  for(var row in contents){
    var line = row.split(" ");

    rendelesek.add({
      "nap": int.parse(line[0]),
      "tipus": line[1],
      "mennyiseg": int.parse(line[2])
    });
  }

  print("2. feladat:");
  print("A rendelések száma: ${rendelesek.length}");

  print("3. feladat:");
  print("Kérem adjon meg egy napot: ");
  var day = int.parse(stdin.readLineSync()!);
  print("A rendelések száma az adott napon: ${rendelesek.where((x) => x["nap"] == day).length}");

  print("4. feladat:");
  var NR = rendelesek.where((x) => x["tipus"] == "NR");
  Set<int> napok = {};
  for(var rendeles in NR){
    napok.add(rendeles["nap"]);
  }
  var calc = 30 - napok.length;
  if(calc == 0) 
    print("Minden nap volt rendelés a reklámban nem érintett városból");
  else
    print("$calc nap nem volt a reklámban nem érintett városból rendelés");
}