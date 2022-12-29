import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    stdout.write('Rock ,Paper or Scissors? (r/p/s)');
    var input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      int s = Random().nextInt(2);
      String select = ['r', 'p', 's'][s];
      print(select);
    } else if (input == 'q') {
      break;
    } else {
      print('invalid input');
    }
  }
}
