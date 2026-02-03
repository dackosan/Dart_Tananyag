import "dart:io";
import "dart:math";

void main() {
  print("Random number: ${getRandomNumber()}");

  print("Írj be egy számot: ");
  var number = int.parse(stdin.readLineSync()!);
  print(getEvenOdd(number));

  print(getDividers(number));

  print("Írj be egy szavat: ");
  var szo = stdin.readLineSync()!;
  print(getVowels(szo));

  print(getConsonants(szo));

  print(getFirstChar(szo));

  print("Írj be egy számot: ");
  var stringNumber = stdin.readLineSync()!;
  print(sumOfDigits(stringNumber));
}

int getRandomNumber() {
  Random random = new Random();
  var randomNumber = random.nextInt(99) + 1;
  return randomNumber;
}

String getEvenOdd(int number) {
  if (number % 2 == 0) {
    return "Even";
  } else {
    return "Odd";
  }
}

List<int> getDividers(int number) {
  List<int> osztok = [];

  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      osztok.add(i);
    }
  }

  return osztok;
}

List<String> getVowels(String szo) {
  List<String> maganhangzok = [
    "a",
    "e",
    "u",
    "i",
    "o",
    "A",
    "E",
    "U",
    "I",
    "O",
  ];
  List<String> betuk = [];

  for (var i = 0; i < szo.length; i++) {
    if (maganhangzok.contains(szo[i]) && !betuk.contains(szo[i])) {
      betuk.add(szo[i]);
    }
  }

  return betuk;
}

List<String> getConsonants(String szo) {
  List<String> maganhangzok = [
    "a",
    "e",
    "u",
    "i",
    "o",
    "A",
    "E",
    "U",
    "I",
    "O",
  ];
  List<String> betuk = [];

  for (var i = 0; i < szo.length; i++) {
    if (!maganhangzok.contains(szo[i])) {
      betuk.add(szo[i]);
    }
  }

  return betuk;
}

String getFirstChar(String szo) {
  if (szo == "") {
    return "";
  } else {
    return szo[0];
  }
}

int sumOfDigits(String stringNumber) {
  var sum = 0;
  var szamok = stringNumber.split("");

  szamok.forEach((sz) {
    var intNumber = int.parse(sz);
    sum += intNumber;
  });

  return sum;
}
