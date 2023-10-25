import 'dart:math';

void main(){
  // final obj = PassengerCar("BMW", 2020);
  // print(obj.descr());

  // final obj = Product("Apple", 100);
  // print(obj.decr());

  // final obj = Building("eff");
  // print(obj.typeOfBuilding());
  // Building obj1 = House("12e2e");
  // print(obj1.typeOfBuilding());

  final obj = Human("Islam", 20);
  print(obj.hello());
}

abstract class Auto{
  final String brend;
  final int year;
  Auto(this.brend, this.year);

  String descr();
}

class PassengerCar implements Auto{
  @override
  String brend;
  @override
  int year;
  PassengerCar(this.brend, this.year, );

  @override
  String descr(){
    return "Brend: $brend\nYear: $year";
  }
}


class Fruct{
  String taste;
  Fruct(this.taste);

  String tryTaste(){
    return taste;
  }

}

class Apple extends Fruct{
  Apple(super.taste);

  @override
  String tryTaste(){
    return taste;
  }
}


class Animal{
  String name;
  int age;
  Animal(this.name, this.age);

  String voice(){
    return "voice";
  }
}

class Dog extends Animal{
  Dog(super.name, super.age);

  @override
  String voice(){
    return "Guv guv";
  }
}


class Produce{
  String name;
  double price;

  Produce(this.name, this.price);
  String decr(){
    return "Name: $name\nPrice: $price";
  }
}

class Product extends Produce{
  Product(super.name, super.price);

  @override
  String decr(){
    return "Name: $name\nPrice: $price";
  }
}

class Shape{
  String color;
  double square;
  Shape(this.color, this.square);

  double findSquare(){
    return 0.0;
  }
}

class Circle extends Shape{
  final double pi = 3.14;
  final double radius;
  Circle(super.color, super.square, this.radius);

  @override
  double findSquare(){
    return pi*pow(radius, 2);
  }
}

class Employee{
  final String name;
  final int salary;

  Employee(this.name, this.salary);

  String getInfo(){
    return "Name: $name\nSalary: $salary";
  }
}

class Manager extends Employee{
  Manager(super.name, super.salary);

  @override
  String getInfo(){
    return "Name: $name\nSalary: $salary";
  }
}

class Building{
  final String address;
  Building(this.address);

  String typeOfBuilding(){
    return "Building";
  }
}

class House extends Building{
  House(super.address);

  @override
  String typeOfBuilding(){
    return "House\naddress: $address";
  }
}

class Vegetable{
  final String name;
  Vegetable(this.name);

  String color(){
    return "color";
  }
}

class Carrot extends Vegetable{
  Carrot(super.name);

  @override
  String color(){
    return "Orange";
  }
}

class Instrument{
  final String name;

  Instrument(this.name);

  String voice(){
    return "Voice";
  }
}

class Guitar extends Instrument{
  Guitar(super.name);

  @override
  String voice(){
    return "Guitar's voice: rapapam";
  }
}

class Organism{
  final String name;
  Organism(this.name);

  String hello(){
    return "Hello $name";
  }
}


class Human extends Organism{

  final int age;

  Human(super.name, this.age);

  @override
  String hello(){
    return "Hello, $name\nAge: $age";
  }
}
