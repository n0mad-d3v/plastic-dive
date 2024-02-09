import 'package:flame/game.dart';
import 'package:plasticdiver/game/components/animals/animal.dart';

class Coral extends Animal {
  final int number;
  Coral({
    required super.isGoingRight,
    required super.maxDeepness,
    super.position,
    required this.number,
    super.size,
    super.anchor,
  });

  @override
  String get image => 'coral-$number.png';

  @override
  Vector2 get floatingVelocity => Vector2.zero();
}