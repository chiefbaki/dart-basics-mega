import 'dart:io';

void main(){

  // first task
  /*int start = int.parse(stdin.readLineSync()!);
  int stop = int.parse(stdin.readLineSync()!);
  int total = 0;
  for ( var i = start; i <= stop; i++){
    total += i;
  }
  print(total);*/

  // second task
  /*while(true){
    int year = int.parse(stdin.readLineSync()!);
    if (year % 4 == 0) {
      print("Високосный год");
    }else{
      print("Не является високосным");
    }
  }*/
  // third task 
  /*int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int m = a * b;
  while( a != 0 && b != 0 ){
    if (a > b) {
      a %= b;
    }else{
      b %= a;
    }
  }
  print(m ~/ (a + b));*/
}