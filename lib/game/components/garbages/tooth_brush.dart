import 'package:plasticdiver/game/components/components.dart';

class ToothBrush extends Garbage {
  ToothBrush({
    required super.maxWorldDeepness,
    super.position,
    super.size,
    super.anchor,
  });

  @override
  String get image => 'tooth_brush.png';

  @override
  int get points => 30;

  @override
  double get garbageWidth => 35;
}
