import 'dart:math';
void main(){

  //divide(10, 5);
  //print(strCounter("qwett"));
  //findType(10.5);
  // print(simpleDigit(2));
  // print(simpleDigit(5));
  // print(simpleDigit(7));
  numOfMonth(2);
}

// first task
void divide(int a, int b){
  print(a % b == 0 ? "Делится на цело" : "Не делится на цело");
}

// second task
int strCounter(String text){
  return text.length;
}

// third task
void findType(dynamic a){
  if(a.runtimeType == int){
    print("Целое число $a");
  }else if(a.runtimeType == double){
    print("Дробное число $a");
  }else if(a.runtimeType == String){
    print("Строка");
  }
}

// fourth task
bool simpleDigit(int a){
  for ( var i = 2; i <= sqrt(a); i++ ){
    if (a % i == 0) {
      return false;
    }
  }
  return true;
}

// fifth task
void numOfMonth(int a){
  if (a <= 2 || a == 12) {
    print("Зима");
  }else if(a < 6){
    print("Весна");
  }else if(a < 9){
    print("Лето");
  }else{
    print("Осень");
  }
}