import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:plasticdive/game/dive_game.dart';
import 'package:plasticdive/ui/common/app_theme.dart';
import 'package:plasticdive/ui/common/ui_helpers.dart';
import 'package:plasticdive/ui/widgets/common/game_button/game_button.dart';
import 'package:stacked/stacked.dart';

import 'game_viewmodel.dart';

class GameView extends StackedView<GameViewModel> {
  const GameView({super.key});

  @override
  Widget builder(
    BuildContext context,
    GameViewModel viewModel,
    Widget? child,
  ) {
    return GameWidget(
      game: DiveGame(
        onGameOver: viewModel.onGameOver,
        airTankLevel: viewModel.airTankLevel,
        collectingSpeedLevel: viewModel.collectingSpeedLevel,
        diveDepthLevel: viewModel.diveDepthLevel,
        swimmingSpeedLevel: viewModel.swimmingSpeedLevel,
        previousHighScore: viewModel.highScore,
        isSoundEnabled: viewModel.isSoundEnabled,
      ),
      autofocus: true,
      loadingBuilder: (context) => const Center(
        // TODO make something better
        child: CircularProgressIndicator(),
      ),
      overlayBuilderMap: {
        'PauseMenu': (BuildContext context, DiveGame game) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Paused',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  const SizedBox(height: 20),
                  GameButton(
                    onPressed: () => viewModel.resumeGame(game),
                    size: 50,
                    child: const Text('Resume', style: buttonTextStyle),
                  ),
                  verticalSpaceMedium,
                  GameButton(
                    onPressed: () => viewModel.exitGame(game),
                    size: 50,
                    color: Colors.redAccent,
                    child: const Text('Exit', style: buttonTextStyle),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  @override
  GameViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      GameViewModel();
}
