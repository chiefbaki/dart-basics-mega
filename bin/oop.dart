import 'dart:math';

void main(){

  // final circleObj = Circle(radius: 10.5, color: "red");
  // circleObj.getRadius();
  // circleObj.getColor();
  // final studentObj = Student(name: "Islam", age: 21, lstScore: [5, 3, 4, 5]);
  // studentObj.avgScore();
  // print(studentObj.getName());
  // print(studentObj.getAge());
  // final carObj = Car(brand: "BMW", model: "M5", yearOfManufacture: 2020);
  // print(carObj.getBrand());
  // print(carObj.getModel());
  // print(carObj.getYear());
  // final bookObj = Book(name: "Three comrades", author: "Erich Maria Remarque", year: 1935);
  // print(bookObj.getName());
  // print(bookObj.getAuthor());
  // print(bookObj.getYearOfBook());
  // final rectangleObj = Rectangle( height: 10, width: 15);
  // print(rectangleObj.getSquare());
  // print(rectangleObj.getPerimeter());
  // final owner = BankAccount(242142, "Islam");
  // final emp = Employee("test", "test", 6000);
  // emp.incSalary(0.3); // увеличиваем зарплату на 30%

  final obj = Triangle(20, 45, 60);
  obj.triangleSquare();
}

class Circle{
  final double radius;
  final String color;

  Circle({required this.radius,required this.color});

  void getRadius(){
    print("Radius: $radius");
  }

  void getColor(){
    print("Color: $color");
  }
}

class Student{
  final String name;
  final int age;
  final List<int> lstScore;

  Student({required this.name, required this.age, required this.lstScore});

  void avgScore(){
    double cnt = 0;
    for (var i = 0 ; i < lstScore.length; i++){
      cnt += lstScore[i];
    }
    print("Average score: $cnt");
  
  }

  String getName(){
    return "Name: $name";
  }

  int getAge(){
    return age;
  }

}

class Car{
  final String brand, model;
  final int yearOfManufacture;

  Car({required this.brand, required this.model, required this.yearOfManufacture});

  String getBrand(){
    return "Brand - $brand";
  }

  String getModel(){
    return "Model - $model";
  }

  int getYear(){
    return yearOfManufacture;
  }
}

class Book{
  final String name,author;
  final int year; // год издания
  Book({required this.name, required this.author, required this.year});

  String getName(){
    return "Name of book - $name";
  }
  
  String getAuthor(){
    return "Name of author - $author";
  }

  int getYearOfBook(){
    return year;
  }
}

class Rectangle{
  final int height, width;

  Rectangle({required this.height, required this.width});

  int getSquare(){
    return height * width;
  }

  int getPerimeter(){
    return (width + height) * 2;
  }
}

class BankAccount{
  final int accountNum;
  int balance = 100;
  final String owner;

  BankAccount(this.accountNum, this.owner);

  int getAccNum(){
    return accountNum;
  }

  int showBalance(){
    return balance;
  }

  String showOwner(){
    return "Owner is $owner";
  }

  void addDeposit(int sum){
    balance += sum;
  }

  void withdraw(int sum){
    balance -= sum;
  }
}

class Product{
  final String name;
  final int price, total;

  Product(this.name, this.price, this.total);

  String getName(){
    return name;
  }

  int getPrice(){
    return price;
  }

  int getTotal(){
    return total;
  }

  int getTotalPrice(){
    return price*total;
  }

}

class Employee{
  final String name, post;
  final int salary;

  Employee(this.name, this.post, this.salary);

  void incSalary(double num){
    var temp = salary * num;
    print(temp + salary);
  }
}

class Triangle{
  
  final int a, b, c;
  Triangle(this.a, this.b, this.c);

  void triangleSquare(){
    var p = 1/2 * (a + b + c);
    var s = sqrt(p*((p-a)*(p-b)*(p-c)));
    print(s);
  }
}