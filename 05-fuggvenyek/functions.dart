void main() {
  print(reverseInteger(-123));
  print(sortNumbersDes(159367));
  print(duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3]));
  print("Eredmény: ${grade(100, 30)}");
  print(gausSum(4));
}

int reverseInteger(int number) {
  bool isNegative = number < 0;
  String reversed = number.abs().toString().split('').reversed.join();
  int result = int.parse(reversed);
  return isNegative ? -result : result;
}

int sortNumbersDes(int number) {
  var szamjegyek = number.toString().split("").map(int.parse).toList();

  szamjegyek.sort((b, a) => a.compareTo(b));

  var stringSzam = "";
  szamjegyek.forEach((sz) {
    stringSzam += "${sz}";
    ;
  });

  var szam = int.parse(stringSzam);

  return szam;
}

List duplicates(array) {
  List seen = [];
  List result = [];

  for (var item in array) {
    if (seen.contains(item) && !result.contains(item)) {
      result.add(item);
    }
    seen.add(item);
  }

  return result;
}

String grade(total, points) {
  if (points >= (total * 0.9) && points <= total) {
    return "A";
  } else if (points >= (total * 0.75) && points < (total * 0.9)) {
    return "B";
  } else if (points >= (total * 0.6) && points < (total * 0.75)) {
    return "C";
  } else if (points >= (total * 0.45) && points < (total * 0.6)) {
    return "D";
  } else if (points >= 0 && points < (total * 0.45)) {
    return "F";
  } else {
    return "Valami nem jó!";
  }
}

int gausSum(int number) {
  var sum = 0;

  for (var i = 0; i <= number; i++) {
    sum += i;
  }

  return sum;
}
