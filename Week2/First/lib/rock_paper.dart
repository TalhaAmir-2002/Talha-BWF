import 'dart:io';
import 'dart:math';
int choice(){
  Random random= Random();
  return(random.nextInt(3)+1);
}
void main(){
  int comp;
  Map choices={1:"Rock",2:"Paper",3:"Scissors"};//using maps to remember choices
  print("\t\tWelcome");
  print("1.Rock\n2.Paper\n3.Scissors");
  stdout.write("\nChoose(1 to 3): ");
  int ans = int.parse(stdin.readLineSync());
  switch(ans){
    case 1:
      print("You choose ${choices[ans]}");
      print("Computer is Choosing...");
      comp=choice();
      if(comp==2){
        print("Computer chooses ${choices[comp]}\nComputer Win!");
      }else if(comp==3){
        print("Computer chooses ${choices[comp]}\nYou Win!");
      }else{
        print("Computer chooses ${choices[comp]}\nDraw!");
      }
      break;
    case 2:
      print("You choose ${choices[ans]}");
      print("Computer is Choosing...");
      comp=choice();
      if(comp==3){
        print("Computer chooses ${choices[comp]}\nComputer Win!");
      }else if(comp==1){
        print("Computer chooses ${choices[comp]}\nYou Win!");
      }else{
        print("Computer chooses ${choices[comp]}\nDraw!");
      }
      break;
    case 3:
      print("You choose ${choices[ans]}");
      print("Computer is Choosing...");
      comp=choice();
      if(comp==1){
        print("Computer chooses ${choices[comp]}\nComputer Win!");
      }else if(comp==2){
        print("Computer chooses ${choices[comp]}\nYou Win!");
      }else{
        print("Computer chooses ${choices[comp]}\nDraw!");
      }
      break;
  }

}