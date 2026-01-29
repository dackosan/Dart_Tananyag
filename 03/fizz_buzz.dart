import 'dart:io';

void main() {
  print("Írj be egy számot: ");
  var szam = int.parse(stdin.readLineSync()!);

  print("\n");
  for (var i = 1; i < szam; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else {
      print(i);
    }
  }
}
