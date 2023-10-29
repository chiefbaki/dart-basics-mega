import 'dart:io';
import 'package:dio/dio.dart';
import 'package:translator/translator.dart';


void main(){
  //await getHttp().then((value) => print(value));
  perfomance();
}

void translate(String textCat) async{
  final translator = GoogleTranslator();
  translator.translate(textCat, from: "en", to: "ru").then((value) => print(value));
}

Future<String> getHttp() async{
  final dio = Dio();
  final response = await dio.get("https://catfact.ninja/fact");
  return response.data["fact"];
}

Future<void> perfomance() async{
  bool flag = true;
  List<String> likedFacts = [];
  String? fact = await getHttp();
  print(fact);
  while( flag ){
    String userAnswer = inputHandler("Choose one option: 1-(liked) 2-(further) 3-(favourite facts): ");
    switch(userAnswer){
    case "1":
      if (fact != null) {
        likedFacts.add(fact);
      }
      break;
    case "2":
      String fact = await getHttp();
      print(fact);
      String likeAnswer = inputHandler("Did you like this fact? yes/no: ");
      if (likeAnswer.toLowerCase() == "yes") {
        likedFacts.add(fact);
      }
      break;
    case "3":
      print(likedFacts);
      break;
    }
  }
}

String inputHandler(String text){
  stdout.write(text);
  return stdin.readLineSync()!;
}