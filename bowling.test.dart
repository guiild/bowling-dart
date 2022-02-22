import 'package:test/test.dart';

import 'bowling.dart';

void main() {
  test('Game with only 0', () {
    var rolls =  [0, 0,
      0, 0,
      0, 0,
      0, 0,
      0, 0,
      0, 0,
      0, 0,
      0, 0,
      0, 0,
      0, 0,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });
    
    expect(bowling_game.score(), equals(0));
  });
}