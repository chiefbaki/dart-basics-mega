import 'dart:io';

void main() async{
  for ( var i = 0; i < 5; i++ ){
    print(i);
  }
  File file = File("D:/mega/dart_les1/dart_application_1/bin/text.txt");
  Future<String> fileContent = file.readAsString();
  fileContent.then((value) => print(value));
  for ( var i = 0; i < 5; i++ ){
    print(i);
  }
}
