
import 'dart:io';

void main(){
 print("Hello World");
 stdout.write("Enter Your Name: ");
 var name = stdin.readLineSync();
 print("Welcome $name");
}