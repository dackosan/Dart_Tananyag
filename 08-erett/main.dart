import 'dart:io';

void main() {
  File file = File('08-erett/rendel.txt');
  List<String> contents = file.readAsLinesSync();

  List<Map<String, dynamic>> rendelesek = [];
  for (var row in contents) {
    var line = row.split(" ");

    rendelesek.add({
      "nap": int.parse(line[0]),
      "tipus": line[1],
      "mennyiseg": int.parse(line[2]),
    });
  }

  print("2. feladat:");
  print("A rendelések száma: ${rendelesek.length}");

  print("3. feladat:");
  print("Kérem adjon meg egy napot: ");
  var day = int.parse(stdin.readLineSync()!);
  print(
    "A rendelések száma az adott napon: ${rendelesek.where((x) => x["nap"] == day).length}",
  );

  print("4. feladat:");
  var NR = rendelesek.where((x) => x["tipus"] == "NR");
  Set<int> napok = {};
  for (var rendeles in NR) {
    napok.add(rendeles["nap"]);
  }
  var calc = 30 - napok.length;
  if (calc == 0)
    print("Minden nap volt rendelés a reklámban nem érintett városból");
  else
    print("$calc nap nem volt a reklámban nem érintett városból rendelés");

  print("5. feladat");
  var maxDarab = rendelesek[0];
  rendelesek.forEach((x) {
    if (x["mennyiseg"] > maxDarab["mennyiseg"]) {
      maxDarab = x;
    }
  });
  print(
    "A legnagyobb darabszám: ${maxDarab["mennyiseg"]}, a rendelés napja: ${maxDarab["nap"]}",
  );

  print("6. feladat");
  print("Település: ");
  var telepules = stdin.readLineSync()!;
  print("Nap: ");
  var nap = int.parse(stdin.readLineSync()!);
  print("Összes: ${osszes(telepules, nap, rendelesek)}");

  print("7. feladat");
  var pl = osszes("PL", 21, rendelesek);
  var tv = osszes("TV", 21, rendelesek);
  var nr = osszes("NR", 21, rendelesek);
  print("A rendelt termékek darabszáma a 21. napon PL: $pl TV: $tv NR: $nr");

  print("8. feladat");
  String kimenet = "Napok 1..10 11..20 21..30\n";
  List<int> darabszamokPL = [0, 0, 0];
  List<int> darabszamokTV = [0, 0, 0];
  List<int> darabszamokNR = [0, 0, 0];
  for (var i = 0; i < 31; i++) {
    darabszamokPL[i ~/ 10] += osszes("PL", i, rendelesek);
    darabszamokTV[i ~/ 10] += osszes("TV", i, rendelesek);
    darabszamokNR[i ~/ 10] += osszes("NR", i, rendelesek);
  }
  kimenet += "PL\t${darabszamokPL[0]}\t${darabszamokPL[1]}\t${darabszamokPL[2]}\n";
  kimenet += "TV\t${darabszamokTV[0]}\t${darabszamokTV[1]}\t${darabszamokTV[2]}\n";
  kimenet += "NR\t${darabszamokNR[0]}\t${darabszamokNR[1]}\t${darabszamokNR[2]}";
  print(kimenet);
  File kampany = File("kampany.txt");
  kampany.writeAsStringSync(kimenet);
}

int osszes(String varos, int nap, List<Map<String, dynamic>> lista) {
  int sum = 0;

  for (var x in lista) {
    if (x["nap"] == nap && x["tipus"] == varos) {
      sum += x["mennyiseg"] as int;
    }
  }

  return sum;
}
