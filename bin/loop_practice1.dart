import 'dart:io';

void main(){
//   square();
//  sum();
  //deposit();
  //divide();
  sumSquare();
}

//  Составьте программу, выводящую на экран квадраты чисел от 10 до 20.
void square(){
  for ( var i = 10; i <= 20; i++ ){
    print(i*i);
  }
}

// Составьте программу, котораЯ вычисляет сумму чисел от 1 до n.значение n вводится с клавиатуры.
void sum(){
  int cnt = 0;
  int inputNum = int.parse(stdin.readLineSync()!);
  for ( var i = 1; i <= inputNum; i++ ){
    cnt += i;
  }
  print(cnt);
}

// В сберкассу на трёхпроцентный вклад положили S рублей.Какой станет сумма вклада через N лет.(Данные вводятся с клавиатуры)

void deposit(){
  double s = double.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);
  for ( var i = 0; i < n; i++ ){
    s *= 1+0.03;
  }
  print(s);
}
// Даны натуральные числа от 20 до 50.Напечатать те из них, которые делятся на 3, но не делятся на 5.
void divide(){
  for ( var i = 20; i <= 50; i++ ){
    if ((i % 3 == 0) && (i % 5 != 0)) {
      print(i);
    }
  }
}

// Даны натуральные числа от 1 до 50. Найти сумму тех из них, которые делятся на 5 или на 7.
void divideSum(){
  int cnt = 0;
  for ( var i = 1; i <= 50; i++ ){
    if ((i % 5 == 0) || (i % 7 == 0)) {
      cnt += i;
    }
  }
  print(cnt);
}

// Напечатать те из двузначных чисел которые делятся на 4, но не делятся на 6.
void divideMul(){
  for ( var i = 1; i <= 50; i++ ){
    if ((i % 4 == 0) && (i % 6 != 0)) {
      print(i);
    }
  }
}

//  Найти сумму чисел от 100 до 200 кратных 17.
void multiple(){
  int cnt = 0;
  for ( var i = 100; i <= 200; i++ ){
    if (i % 17 == 0) {
      cnt += i;
    }
  }
  print(cnt);
}

// Составьте программу, которая вычисляет сумму квадратов чисел от 1 до введенного вами целого числа N
void sumSquare(){
  int cnt = 0;
  int n = int.parse(stdin.readLineSync()!);
  for ( var i = 1; i <= n; i++ ){
    cnt += i * i;
  }
  print(cnt);
}