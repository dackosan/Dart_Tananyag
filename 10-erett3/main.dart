import 'dart:io';

void main() {
  File file = File("taborok.txt");
  List<String> contents = file.readAsLinesSync();
  List<Map<String, dynamic>> taborok = [];
  for (var row in contents) {
    var line = row.split("\t");
    taborok.add({
      "kezd_ho": int.parse(line[0]),
      "kezd_nap": int.parse(line[1]),
      "vege_ho": int.parse(line[2]),
      "vege_nap": int.parse(line[3]),
      "diak": line[4],
      "szakk": line[5],
    });
  }

  stdout.write("Adja meg egy tanuló betűjelet: ");
  var letter = stdin.readLineSync()!;
  List<int> time = [];
  List<String> keresett = [];
  for (var tabor in taborok) {
    if (tabor["diak"].toString().contains(letter)) {
      keresett.add(
        "${tabor["kezd_ho"]}.${tabor["kezd_nap"]}-${tabor["vege_ho"]}.${tabor["vege_nap"]} ${tabor["szakk"]}",
      );
      time.add(152);
    }
  }
  keresett.sort();

  File egytanulo = File("egytanulo.txt");
  egytanulo.writeAsStringSync(keresett.join("\n"));
}
