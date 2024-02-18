import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/parallax.dart';
import 'package:flutter/rendering.dart';
import 'package:plasticdiver/constants.dart';
import 'package:plasticdiver/game/dive_game.dart';

class Background extends ParallaxComponent<DiveGame> {
  Background({required Vector2 size})
      : super(
          anchor: Anchor.topCenter,
          size: size,
          position: Vector2.zero(),
        );

  @override
  Future<void> onLoad() async {
    parallax = await game.loadParallax(
      [
        ParallaxImageData('parallax/background-1.png'),
        ParallaxImageData('parallax/ocean-light.png'),
      ],
      baseVelocity: Vector2.zero(), // If the player doesn't move, the background doesn't move
      velocityMultiplierDelta: Vector2(1.1, 1.1), // Speed between parallax layers
      repeat: ImageRepeat.repeat, // Repeat the background image for X and Y
    );
  }

  // Move the background when the player moves
  @override
  void update(double dt) {
    super.update(dt);
    parallax?.baseVelocity = game.world.diver.velocity * Constants.backgroundVelocityMultiplier;
  }
}
