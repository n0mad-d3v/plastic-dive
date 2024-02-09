import 'package:flame/game.dart';
import 'package:plasticdiver/game/components/animals/animal.dart';

class TunaFish extends Animal {
  TunaFish({
    required super.isGoingRight,
    required super.maxDeepness,
    super.position,
    super.size,
    super.anchor,
  });

  @override
  String get image => 'tuna-fish.png';

  @override
  Vector2 get floatingVelocity => Vector2(200, 0);
}