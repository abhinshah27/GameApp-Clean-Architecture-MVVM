import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/add_to_favorite_games.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/check_game_status.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/remove_favorite_game.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'game_details_favorite_view_model_state.dart';

// Cubit to handle state for Game details page favorite Icon button state
class GameDetailsFavoriteViewModelCubit extends Cubit<bool> {
  late final AddToFavoriteGamesUseCase _addToFavoriteUseCase;
  late final RemoveFavoriteGameUseCase _removeFavoriteGameUseCase;
  late final CheckGameStatusUseCase _checkGameStatusUseCase;

  GameDetailsFavoriteViewModelCubit(
      {required AddToFavoriteGamesUseCase addToFavoriteUseCase,
      required RemoveFavoriteGameUseCase removeFavoriteGameUseCase,
      required CheckGameStatusUseCase checkGameStatusUseCase})
      : _addToFavoriteUseCase = addToFavoriteUseCase,
        _removeFavoriteGameUseCase = removeFavoriteGameUseCase,
        _checkGameStatusUseCase = checkGameStatusUseCase,
        super(false);

  // Check game is favorite or not and set status.
  void setGameStatus({required int gameId}) async {
    final successOrFailure = await _checkGameStatusUseCase(gameId);
    if (successOrFailure is SuccessResult<bool>) {
      emit(successOrFailure.data);
    }
  }

  // toggle favorite status and update into local database.
  // FavoriteGamesViewModelBloc for update favorite list in UI if
  // user come from favorite list page.
  void toggleFavorite({
    required GameDetailsEntity gameDetails,
    required FavoriteGamesViewModelBloc? favoriteGamesViewModelBloc,
  }) async {
    if (state) {
      final successOrFailure = await _removeFavoriteGameUseCase(gameDetails.id);
      if (successOrFailure is SuccessResult<void>) {
        emit(false);
        if (favoriteGamesViewModelBloc != null) {
          favoriteGamesViewModelBloc.add(FavoriteGamesViewModelEvent.getFavoriteGames());
        }
      }
    } else {
      final successOrFailure = await _addToFavoriteUseCase(AddToFavoriteUseCaseParams(
        key: gameDetails.id,
        value: GameEntity(
          id: gameDetails.id,
          title: gameDetails.title,
          thumbnail: gameDetails.thumbnail ?? '',
          shortDescription: gameDetails.shortDescription ?? '',
          gameUrl: gameDetails.gameUrl ?? '',
          genre: gameDetails.genre ?? '',
          platform: gameDetails.platform ?? '',
          publisher: gameDetails.publisher ?? '',
          developer: gameDetails.developer ?? '',
          releaseDate: gameDetails.releaseDate ?? '',
          freeToGameProfileUrl: gameDetails.freeToGameProfileUrl ?? '',
        ),
      ));

      if (successOrFailure is SuccessResult<String>) {
        emit(true);
        if (favoriteGamesViewModelBloc != null) {
          favoriteGamesViewModelBloc.add(FavoriteGamesViewModelEvent.getFavoriteGames());
        }
      }
    }
  }
}
