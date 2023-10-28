import 'dart:io';

void main() {
  runApp();
}

void runApp() {
  convert();
}

void convert() {
  stdout.writeln("1)Перевести другую валюту в сом?\n2)Перевести сом на другую валюту?");
  String textInput = inputHandler("Ввод: ");
  switch(textInput){
    case '1':
      ratesIter();
      anotherCurrencyToSom();
      break;
    case '2':
      ratesIter();
      somToAnotherCurrency();
  }
}

void somToAnotherCurrency(){
  String chooseCurrency = inputHandler("Выберите валюту: ");
    for(var el in exchangeRates.keys){
      if (chooseCurrency.toUpperCase() == el) {
        double cnt = double.parse(inputHandler("Сколько хотите купить?: "));
        double total = cnt / exchangeRates[el]!;
        print(total.toStringAsFixed(4));
      }
    }
}

void anotherCurrencyToSom(){
  String chooseCurrency = inputHandler("Выберите валюту: ");
    for(var el in exchangeRates.keys){
      if (chooseCurrency.toUpperCase() == el) {
        double cnt = double.parse(inputHandler("Сколько хотите купить?: "));
        double total = cnt * exchangeRates[el]!;
        print(total.toStringAsFixed(4));
      }
    }
}

void ratesIter(){
  stdout.writeln("Актуальные валюты: ");
  for (var element in exchangeRates.keys) {
    print(element);
  }
}

Map<String, double> exchangeRates = {
  "RUB": 0.9506,
  "USD": 89.3200,
  "EUR": 94.3398,
  "KZT": 0.1899,
  "UZS": 0.0073,
  "JPY": 5.9513
};

String inputHandler(String text) {
  stdout.writeln(text);
  return stdin.readLineSync()!;
}
