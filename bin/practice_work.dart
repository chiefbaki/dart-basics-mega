void main(){
  List<int> lst = [10, -5, 1, -2, 4, 8, 5, 22];
  print(max(lst));
  //print(uniqEl(lst));
  //print(evenSum(lst)); // 3
  //sort(lst);
  //maxEven(lst);
}

// Напишите программу, которая находит и выводит на экран наибольший
// элемент в данном массиве чисел, а также его индекс
String max(List<int> lst){
  int max = 0;
  for ( var i = 0; i < lst.length; i++ ){
    if (lst[i] > max) {
      max = lst[i];
    }
  }
  return "Max: $max\nIndex: ${lst.indexOf(max)}";
}

// Напишите программу, которая проверяет, все ли элементы в массиве уникальны (не повторяются).
// если да, то необходимо вывести true
bool uniqEl(List<int> lst){
  bool flag = false;
  for ( var i = 0; i < lst.length; i++ ){
    for ( var j = i+1 ; j < lst.length ; j++ ){
      if (lst[i] != lst[j]) {
        flag = true;
      }else{
        flag = false;
      }
    }
  }
  return flag;
}

// Решите задачу о подсчете количества четных чисел в массиве.
int evenSum(List<int> lst){
  int total = 0;
  for ( var i = 0; i < lst.length; i++ ){
    if (lst[i] % 2 == 0) {
      total++;
    }
  }
  return total;
}

// Bubble sort
void sort(List<int> arr){
  for ( var i = arr.length-1; i > 0; i--){
    for ( var j = 0; j < i; j++ ){
      if (arr[j] > arr[j+1]) {
        var temp = arr[j];
        arr[j] = arr[j+1];
        arr[j+1] = temp;
      }
    }
  }
  print(arr);
}
// Напишите программу, которая находит наибольшее четное число в массиве.
void maxEven(List<int> lst){
  int max = 0;
  List<int> temp = [];
  for ( var i = 0; i < lst.length; i++ ){
    if (lst[i] % 2 == 0) {
      temp.add(lst[i]);
      for ( var j = 0; j < temp.length; j++ ){
          if (temp[j] > max) {
            max = temp[j];
        }
      }
    }
  }
  print(temp);
  print(max);
}