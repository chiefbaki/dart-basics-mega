import 'dart:io';
import 'package:dio/dio.dart';
import 'package:translator/translator.dart';

void main(){
  perfomance();
}

Future<String> translate(String textCat, String lang) async {
  final translator = GoogleTranslator();
  final translation = await translator.translate(textCat, from: "en", to: lang);
  return translation.text;
}

Future<String> getHttp(String lang) async {
  final dio = Dio();
  final response = await dio.get("https://catfact.ninja/fact");
  return translate(response.data["fact"], lang);
}

Future<void> perfomance() async {
  List<String> likedFacts = [];
  String lang = inputHandler("Choose lang: en, fr, ky: ");
  while (true) {
    String? fact = await getHttp(lang);
    print(fact);
    String userAnswer = inputHandler(
        "\nChoose one option: 1-(liked) 2-(further) 3-(favourite facts) 4-exit: ");
    switch (userAnswer) {
      case "1":
        likedFacts.add(fact);
      case "2":
        String fact = await getHttp(lang);
        print(fact);
        String likeAnswer = inputHandler("Did you like this fact? yes/no: ");
        if (likeAnswer.toLowerCase() == "yes") {
          likedFacts.add(fact);
        }
      case "3":
        for (var i in likedFacts) {
          print("\n$i");
        }
        break;
      case '4':
        exit(0);
    }
  }
}

String inputHandler(String text) {
  stdout.write(text);
  return stdin.readLineSync()!;
}
