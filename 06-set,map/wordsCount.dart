void main() {
  var szoveg = "Window goat apple beautiful apple";

  var lista = szoveg.split("");

  Map<String, int> szavak = {};

  for (var szo in lista) {
    if (szavak.containsKey(szo)) {
      szavak[szo] = szavak[szo]! + 1;
    } else {
      szavak[szo] = 1;
    }
  }

  print(szavak);
}
