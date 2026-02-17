import 'dart:io';

void main() {
  File file = File('07-file/books.txt');
  String contents = file.readAsStringSync();
  List<String> lines = contents.split("\t");

  file.writeAsStringSync(
    "\nDante\tIsteni szinjatek\t2nd\t1300",
    mode: FileMode.append,
  );

  file = File('07-file/books.txt');
  contents = file.readAsStringSync();
  lines = contents.split("\t");

  for (var line in lines) {
    print(line);
  }
}
