void main() {
  // declaring variables
  String name = "John";
  String address = "USA";
  num age = 20; // used to store any types of numbers
  num height = 5.9;
  bool isMarried = false;

  dynamic age = 19; //var-ál nem változik, de ezzel megváltoztathatod a type-ot

  final lista = [1, 2, 3, 4, 5]; //final megengedi hogy modósítsd a tömböt

  const fibo = [0,1,1,2,3,5]; //const-nál sehogy se lehet változtatni az értékeket
  fibo.add(8); //const-nál nem lehet add

  // printing variables value
  print("Name is $name");
  print("Address is $address");
  print("Age is $age");
  print("Height is $height");
  print("Married Status is $isMarried");
  print('A tömb első eleme: ${lista[0]}');
}
