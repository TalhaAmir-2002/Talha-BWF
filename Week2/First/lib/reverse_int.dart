import 'dart:io';
import 'dart:convert';
void main(){
  print("Eneter any integer: ");
  int number= int.parse(stdin.readLineSync());
  int reversed_num=0,last_num=0;
  while(number>0){
    last_num=number%10;
    reversed_num=reversed_num*10+last_num;
    number=number~/10;
  }
  print("Reversed integer is : $reversed_num");



}