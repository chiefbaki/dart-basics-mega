void main(){
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  uniqEl(a, b);
  // List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  // evenNum(a);
  // subString("a", "dart");
  // subString("c", "Chamber of secrets");
  // subString("b", "big fat bubble");
}


// first task - find similar and uniq elements
void uniqEl(List<int> a, List<int> b){
  List<int> uniq = []; 
  for ( var i = 0; i < a.length; i++){
    for ( var j = 0; j < b.length; j++){
      if (a[i] == b[j]) {
        uniq.add(a[i]);
      }
    }
  }

  for (var i = 0; i < uniq.length; i++){
    for (var j = i+1; j < uniq.length; j++){
      if (uniq[i] == uniq[j]) {
        print("Есть похожие элементы");
        uniq.remove(uniq[i]);
      }
    }
  }
  print(uniq);
}

// second task - find even numbers and add to new list
void evenNum(List<int> lst){
  List<int> evenLst = [];
  for (var i = 0; i < lst.length; i++ ){
    if (lst[i] % 2 == 0) {
      evenLst.add(lst[i]);
    }
  }
  print(evenLst);
}

// third task - 
void subString(String chr, String mask){
  int cnt = 0;
  for (var i = 0; i < mask.length; i++){
    if (chr == mask[i]) {
      cnt++;
    }
  }
  print(cnt);
}