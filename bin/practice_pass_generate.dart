import 'dart:io';
import 'dart:math';


void main(){
  int i = 0;
  bool flag = true;
  do{
    i++;
    print(passGenerate());
    String op = inputHandler("Do you wanna to continue? Yes/no");
    if(op.toLowerCase() == "yes"){
      print(passGenerate());
    }else{
      flag = false;
    }
  }while(flag);
}

String passGenerate(){
  String upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  String lower = 'abcdefghijklmnopqrstuvwxyz';
  String numbers = '1234567890';
  String symbols = '!@#\$%^&*()<>,./';
  int passLength = int.parse(inputHandler("Length of password: "));
  String seed = upper + lower + numbers + symbols;
  String password = '';
  List<String> list = seed.split('').toList();
  Random rand = Random();

  for (int i = 0; i < passLength; i++) {
    int index = rand.nextInt(list.length);
    password += list[index];
  }
  return password;
}

String inputHandler(text){
  stdout.writeln(text);
  return stdin.readLineSync()!;
}

