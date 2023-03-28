import 'dart:io';
void main(){
  var list1 = new List();
  list1=[1,2,3,4,4,5];
  print(list1.length);
  int input=int.parse(stdin.readLineSync());
  list1.add(input);
  print(list1);
  for(int i=0;i<list1.length;i++){
    print(list1[i]);
  }
  for(int i in list1){
    print(i);
  }//does same iterating as above loop


}