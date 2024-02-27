import 'package:flame/game.dart';
import 'package:plasticdiver/constants.dart';
import 'package:plasticdiver/game/components/animals/animal.dart';

class AngelFish extends Animal {
  AngelFish({
    required super.isGoingRight,
    required super.maxWorldDeepness,
    super.position,
    super.size,
    super.anchor,
  });

  static const double minDepth = 3000;
  static const double maxDepth = 6000;

  @override
  String get image => 'angel_fish.png';

  @override
  double get animalWidth => 35;

  @override
  Vector2 get floatingVelocity => Vector2(0.5 * Constants.fishVelocityMultiplier, 0);
}