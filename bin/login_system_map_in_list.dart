import 'dart:io';
void main(){
  Map user1 = {"Email":"a@gmail.com","Password":"123"};
  Map user2 = {"Email":"b@gmail.com","Password":"456"};
  Map user3 = {"Email":"c@gmail.com","Password":"789"};

  List users = [user1,user2,user3];

  print("Enter your email : ");
  String? userEmail = stdin.readLineSync();
  print("Enter your password : ");
  String? userPassword = stdin.readLineSync() ?? "";

  for (var element in users) {
    if(userEmail == element["Email"] && userPassword == element["Password"]){
       print("Login Successfuly");
       break;
    }else if(userEmail != element["Email"]){
      print("Email is incorrect");
      break;
    }else if(userPassword != element["Password"]){
      print("Password is incorrect");
      break;
    }
  }


}