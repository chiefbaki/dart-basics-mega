import 'dart:io';

void main(List<String> arguments){
  //sum();
  // palindrom();
  // year();
  // mcd();
  sumDigit();
}

/// Напишите программу, которая запрашивает у пользователя
/// начало и конец диапазона целых чисел, а затем использует цикл for для подсчета суммы всех чисел в этом диапазоне.
void sum(){
  try{
    int start = int.parse(stdin.readLineSync()!);
    int stop = int.parse(stdin.readLineSync()!);
    int cnt = 0;
    for ( var i = start; i <= stop; i++ ){
      cnt += i;
    }
    print(cnt);
  }catch(e){
    print("Ошибка: $e");
  }
}

/// Запросите у пользователя год и определите, является ли он високосным с использованием
/// конструкции if else и цикла.
void year(){
  bool flag = true;
  String text = '';
  while(flag){
    int checkYear = int.parse(inputHandler("Input year: "));
    checkYear % 4 == 0 ? text = "Високосный год" : text = "Невисокосный год";
    print(text);
    String str = inputHandler("Do you wanna to continue? yes/no: ");
    str.toLowerCase() == "yes" ? flag = true : flag = false;
  }
  
}

/// Запросите у пользователя два числа и найдите их наименьшее общее кратное 
/// с использованием цикла и конструкции if else.
int gcd(int a, b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}

void mcd(){
  try{
    int n = int.parse(inputHandler("n= "));
    int m = int.parse(inputHandler("m= "));
    print((n~/gcd(n, m))*m);
  }catch(e){
    print("Неправильный символ");
  }
}

/// Попросите пользователя ввести целое число, а затем используйте цикл и конструкцию 
/// if else для подсчета суммы его цифр.
void sumDigit(){
  int n = int.parse(inputHandler("n= "));
  int sum = 0;
  while( n > 0 ){
    var digit = n % 10;
    sum += digit;
    n ~/= 10;
  }
  print(sum);
}

/// Запросите у пользователя слово или фразу и определите, является ли оно палиндромом 
/// (читается одинаково с начала и с конца) с использованием цикла и конструкции if else
void palindrom(){
  try{
    String text = stdin.readLineSync()!;
    print(text == text.split("").reversed.join() ? true : false);
  }catch(e){
    print(e);
  }
}

String inputHandler(String text){
  stdout.write(text);
  return stdin.readLineSync()!;
}