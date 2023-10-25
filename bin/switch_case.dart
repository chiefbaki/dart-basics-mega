import 'dart:io';

void main(){
  //calc();
  //type();
  performAction();
}

// void tax(double sum){
//   double taxRate = 0.0;
//   switch(sum){
//   case double.infinity:
//       print(sum*0.12);
//       break;
//     default:
//       if (sum <= 10000) {
//         taxRate = 0;
//       } else if (sum <= 50000) {
//         print(sum*0.1);
//       }
//       break;
//   }
//   // print("Сумма налога на доход: ${sum * taxRate}");
// }

// Создайте калькулятор, который выполняет математические операции (сложение, вычитание, умножение, деление)
// в зависимости от оператора, введенного пользователем.
void calc(){
  int a = int.parse(inputHandler("a: "));
  int b = int.parse(inputHandler("b: "));
  String op = inputHandler("Write an op: 1(+) 2(-) 3(/) 4(*): ");
  switch(op){
    case '1':
      print(a+b);
      break;
    case '2':
      print(a-b);
      break;
    case '3':
      print(a~/b);
      break;
    case '4':
      print(a*b);
      break;
    default:
      print("Incorrect op");
  }
}

// Функция для вывода текста и ввода пользовательских данных
String inputHandler(String text){
  stdout.write(text);
  return stdin.readLineSync()!;
}

// Программа принимает расширение файла (например, ".txt", ".jpg", ".pdf") и определяет его тип
// (текстовый, изображение, документ и так далее) с использованием конструкции switch case.
void type(){
  String fileType = inputHandler("Write the type: '.txt', '.jpg', '.pdf', '.docx', '.py': ");
  switch(fileType){
    case ".txt":
      print("Формат текстового файла");
      break;
    case ".jpg":
      print("Формат изображения");
      break;
    case ".pdf":
      print("Формат переносимых документов");
      break;
    case ".docx":
      print("Формат документа");
      break;
    case ".py":
      print("Формат языка Python");
      break;
  }
}

/*Реализуйте программу для управления банковским счетом пользователя без использования цикла. 
Счет имеет начальный баланс и различные операции, которые пользователь может выполнять: депозит, 
снятие средств, запрос баланса и закрытие счета. Пользователь вводит команды в основной функции,
и программа вызывает соответствующую функцию для обработки операции с использованием switch case. 
Используйте рекурсию для обеспечения выполнения последовательности операций.*/

// map с данными
Map<String, int> data = {"balance": 1000};

// функция для просмотра баланса
void showBalance(){
  print("Balance: ${data["balance"]}");
  performAction();
}

// функция для добавления баланса
void addDeposit(int sum){
  print(data["balance"] = data["balance"]! + sum);
  performAction();
}

// функция для снятия с баланса
void withdraw(int sum){
  if (data["balance"]! == 0) {
    print("Недостаточно средств");
  }else{
    data["balance"] = data["balance"]! - sum;
    print("Успешно");
  }
  performAction();
}

// функция для закрытия счета
void close(){
  data.clear();
  print("Вы успешно закрыли счет");
}

// функция для выполнения операций
void performAction(){
  String op = inputHandler("Выберите операцию 1-show balance 2-add deposite 3-withdraw 4-close acc 5-exit: ");
  switch(op){
    case '1':
      showBalance();
      break;
    case '2':
      int sum = int.parse(inputHandler("Введите sum: "));
      addDeposit(sum);
      break;
    case '3':
      int sum = int.parse(inputHandler("Введите sum: "));
      withdraw(sum);
    case '4':
      close();
      break;
    case '5':
      exit(0);
    default:
      print('Попробовать еще раз');
      performAction();
  }
}

