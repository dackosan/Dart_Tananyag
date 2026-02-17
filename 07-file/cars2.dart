import 'dart:io';

void main(){
  File file = File("07-file/cars2.txt");
  String contents = file.readAsStringSync();
  List<String> lines = contents.split("\t");

  file.writeAsStringSync("\nYugo\t101\tWhite\t1980", mode: FileMode.append);

  file = File("07-file/cars2.txt");
  contents = file.readAsStringSync();
  lines = contents.split("\t");

  print(lines);
}