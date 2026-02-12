void main() {
  var szoveg = "Window goat apple beautiful";

  //Map<String, int> vowels = {"a": 0, "e": 0, "u": 0, "i": 0, "o": 0};
  Map<String, int> vowels = {};

  for (var i = 0; i < szoveg.length; i++) {
    if ("aeiou".contains(szoveg[i])) {
      //vowels[szoveg[i]] = vowels[szoveg[i]]! + 1;
      vowels[szoveg[i]] = vowels[szoveg[i]] ?? 1 + 1;
    }
  }

  print(vowels);
}
