import 'dart:io';
import 'dart:math';

import 'game.dart';

void main() {
  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');
dynamic check;

for(;;) {
  var game = Game();
  while(true){
    stdout.write('║ Guess the number between 1 and 100: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    game.addcount();

    var answer = game.doguess(guess);

    if (answer == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (answer == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else {
      var count = game.getcount();
      print('║ ➜ $guess is CORRECT ❤, total guesses: $count');
      print('╟────────────────────────────────────────');
      break;
    }
  }
  while(true) {
    stdout.write('║ PLay again? (Y/N):');
    check = stdin.readLineSync();
    if (check == 'n' || check == 'N') {
      break;
    } else if (check == 'Y' || check == 'y') {
      break;
    } else {
      continue;
    }
  }if (check == 'n' || check == 'N') {
    break;
  } else if (check == 'Y' || check == 'y') {
    continue;
  }
}


  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}