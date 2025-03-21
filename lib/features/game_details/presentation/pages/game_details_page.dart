import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/widgets/request_failure_view.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details/game_details_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/widgets/game_details_app_bar.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/widgets/game_details_body_view.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/widgets/game_details_loading_view.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameDetailsPage extends StatelessWidget {
  const GameDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameDetailsViewModelBloc, GameDetailsViewModelState>(
      builder: (context, state) {
        return Scaffold(
          appBar: getGameDetailsAppBar(state, context),
          body: state.when(
              gameDetailsLoading: () => GameDetailsLoadingView(),
              gameDetailsLoaded: (gameDetailsEntity) => GameDetailsBodyView(gameDetailsEntity: gameDetailsEntity),
              gameDetailsFailure: (statusCode, message) => RequestFailureView(
                    statusCode: statusCode,
                    message: message,
                    onRetry: () {
                      final GameDetailsPageArguments gameDetailsPageArguments =
                          ModalRoute.of(context)!.settings.arguments as GameDetailsPageArguments;
                      context
                          .read<GameDetailsViewModelBloc>()
                          .add(GameDetailsViewModelEvent.getGameDetails(gameId: gameDetailsPageArguments.gameId));
                    },
                  )),
        );
      },
    );
  }
}

class GameDetailsPageArguments {
  final int gameId;
  final FavoriteGamesViewModelBloc? favoriteGamesViewModelBloc;

  GameDetailsPageArguments({required this.gameId, this.favoriteGamesViewModelBloc});
}
