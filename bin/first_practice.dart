import 'dart:io';

void main(){
  // //sum();
  // print(evenOrOdd());
  // table();
  // toF();
  convert();
}

/// Напишите программу, которая запрашивает два числа у пользователя 
/// через консоль и выводит результат их сложения, вычитания, умножения и деления.
void sum(){
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print("${a + b}\n${a - b}\n${a * b}\n${a / b}");
}

/// Создайте программу, которая запрашивает число у пользователя и  выводит в консоль true 
/// если  число четно и false если оно нечетное.
bool evenOrOdd(){
  int a = int.parse(stdin.readLineSync()!);
  return a % 2 == 0 ? true : false;
}

/// Напишите программу, которая выводит таблицу умножения для заданного числа. 
/// Например, если пользователь вводит 5, программа должна вывести таблицу умножения на 5 от 1 до 10

void table(){
  int a = int.parse(stdin.readLineSync()!);
  for ( var i = 1; i <= 10; i++ ){
    print("$a x $i= ${a*i}");
  }
}

/// Напишите программу, которая преобразует температуру из градусов Цельсия в градусы 
/// Фаренгейта
void toF(){
  double a = double.parse(stdin.readLineSync()!);
  print("F: ${a*(9/5) + 32}");
}

/// Напишите программу, которая конвертирует сумму в одной валюте в другую. 
/// Пользователь вводит сумму которую необходимо конвертировать, название валюты, стоимость валюты. 
/// После ввода необходимо вывести ответ.

void convert(){
  double a = double.parse(inputHandler("Введите сумму: "));
  String currency = inputHandler("Введите валюту: ");
  double currencyValue = double.parse(inputHandler("Введите стоимость валюты: "));
  print("$currency: ${(a/currencyValue).toStringAsFixed(4)}");
}

/// Функция для вывода текси и ввода данных
String inputHandler(String text){
  stdout.writeln(text);
  return stdin.readLineSync()!;
}