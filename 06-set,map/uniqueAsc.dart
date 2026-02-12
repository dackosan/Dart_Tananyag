void main(){
  List<int> szamok = [1,2,3,4,5,2,3,4,6,7,8,6,5,3,4,-10,-2,-25];

  var eredmeny = szamok.toSet().toList()..sort();
  print(eredmeny);
}