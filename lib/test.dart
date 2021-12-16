import 'dart:io';
import 'dart:math';

void main(){
  print('╔══════════════════════════════════════════════');
  print('║              GUESS THE NUMBER                ');
  print('║──────────────────────────────────────────────');
  Random R = new Random();
  var ans = R.nextInt(101);
  stdout.write('║ Guess the number between 1 and 100: ');
  var user = stdin.readLineSync();
  var number = int.tryParse(user!);
  var count = 1;
  for(;number != ans;){
    if(number! > ans){
      print('║ ➜ $number is TOO HIGH! ▲');
    }else{
      print('║ ➜ $number is TOO LOW! ▼');
    }
    stdout.write('║ Guess the number between 1 and 100: ');
    user = stdin.readLineSync();
    number = int.tryParse(user!);
    count++;
  }
  print('║ ➜ $number is CORRECT ❤,total guesses: $count');
  print('║──────────────────────────────────────────────');
  print('║                  THE END                ');
  print('╚══════════════════════════════════════════════');
}