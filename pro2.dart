import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  List<String> dices = [
    '''
      _____
     |  1  |
     |_____| ''',
    '''
      _____
     |  2  |
     |_____| ''',
    '''
      _____
     |  3  |
     |_____| ''',
    '''
      _____
     |  4  |
     |_____| ''',
    '''
      _____
     |  5  |
     |_____| ''',
    '''
      _____
     |  6  |
     |_____| '''
  ];

  int playerScore = 0;
  int compScore = 0;
  print('человек начинает первым, если нажмите da');
  String a = stdin.readLineSync()!;
  playerScore = tossDice(dices);
  print('теперь очередь компьютере, если готовы нажмите da');
  String a2 = stdin.readLineSync()!;
  compScore = tossDice(dices);
  if (playerScore > compScore) {
    print('победил человек');
  } else if (playerScore < compScore) {
    print('победил комп');
  } else {
    print('draw');
  }
}

int tossDice(List<String> dices) {
  int r = Random().nextInt(6 - 0);
  print(dices[r]);
  return r + 1;
}
