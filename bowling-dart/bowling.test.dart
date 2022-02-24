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

  test('Game with 0 on the 2nd shoot', () {
    var rolls =  [5, 0,
      5, 0,
      5, 0,
      5, 0,
      5, 0,
      5, 0,
      5, 0,
      5, 0,
      5, 0,
      5, 0,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(50));
  });

  test('Game with no 0', () {
    var rolls =  [5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(80));
  });

  test('Game with one strike', () {
    var rolls =  [10, 0,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(90));
  });

  test('Game with more than one strike', () {
    var rolls =  [10, 0,
      5, 3,
      10, 0,
      5, 3,
      10, 0,
      5, 3,
      10, 0,
      5, 3,
      10, 0,
      5, 3,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(130));
  });

  test('Game with one spare', () {
    var rolls =  [5, 5,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
      5, 3,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(87));
  });

  test('Game with more than one spare', () {
    var rolls =  [5, 5,
      5, 3,
      5, 5,
      5, 3,
      5, 5,
      5, 3,
      5, 5,
      5, 3,
      5, 5,
      5, 3,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(115));
  });

/*  test('Game with spare and strike', () {
    var rolls =  [5, 5,
      5, 3,
      10, 0,
      5, 3,
      5, 5,
      10, 0,
      5, 5,
      5, 3,
      10, 0,
      5, 3,
    ];
    var bowling_game = new Bowling();
    rolls.forEach((pinsDown) { bowling_game.roll(pinsDown); });

    expect(bowling_game.score(), equals(138));
  });*/
}