import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:platformer/levels/level.dart';

class Platformer extends FlameGame {
  late final CameraComponent cam;

  final world = Level();

  @override
  FutureOr<void> onLoad() {
    cam = CameraComponent.withFixedResolution(
      world: world,
      width: 1280,
      height: 720,
    );
    cam.viewfinder.anchor = Anchor.topLeft;
    addAll([cam, world]);
    return super.onLoad();
  }
}
