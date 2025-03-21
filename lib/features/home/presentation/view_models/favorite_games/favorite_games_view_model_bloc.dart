import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/utils/logger.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/remove_favorite_game.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/usecases/get_favorite_games.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entity/game_entity/game_entity.dart';

part 'favorite_games_view_model_event.dart';

part 'favorite_games_view_model_state.dart';

part 'favorite_games_view_model_bloc.freezed.dart';

class FavoriteGamesViewModelBloc extends Bloc<FavoriteGamesViewModelEvent, FavoriteGamesViewModelState> {
  late final GetFavoriteGamesUseCase _getFavoriteGamesUseCase;
  late final RemoveFavoriteGameUseCase _removeFavoriteGameUseCase;

  FavoriteGamesViewModelBloc(
      {required GetFavoriteGamesUseCase getFavoriteGamesUseCase,
      required RemoveFavoriteGameUseCase removeFavoriteGameUseCase})
      : super(const FavoriteGamesViewModelState.favoriteGamesLoading()) {
    _getFavoriteGamesUseCase = getFavoriteGamesUseCase;
    _removeFavoriteGameUseCase = removeFavoriteGameUseCase;
    on<FavoriteGamesViewModelEvent>((event, emit) {
      event.map(
        getFavoriteGames: (event) => _onGetFavoriteGames(event, emit),
        removeFavoriteGame: (event) => _onRemoveFavoriteGame(event, emit),
      );
    });
  }

  void _onGetFavoriteGames(_GetFavoriteGames event, Emitter<FavoriteGamesViewModelState> emit) async {
    emit(FavoriteGamesViewModelState.favoriteGamesLoading());
    final successOrFailure = await _getFavoriteGamesUseCase(NoParams());
    if (successOrFailure is SuccessResult<List<GameEntity>>) {
      emit(FavoriteGamesViewModelState.favoriteGamesLoaded(favoriteGames: successOrFailure.data));
    } else {
      emit(FavoriteGamesViewModelState.favoriteGamesFailure(
        statusCode: (successOrFailure as FailureResult<List<GameEntity>>).errorResult.statusCode,
        message: successOrFailure.errorResult.message,
      ));
    }
  }

  void _onRemoveFavoriteGame(_RemoveFavoriteGame event, Emitter<FavoriteGamesViewModelState> emit) async {
    final successOrFailure = await _removeFavoriteGameUseCase(event.id);
    if (successOrFailure is SuccessResult<void>) {
      (state as _FavoriteGamesLoaded).favoriteGames.removeWhere((e) => e.id == event.id);
      emit(FavoriteGamesViewModelState.favoriteGamesLoaded(
          favoriteGames:(state as _FavoriteGamesLoaded).favoriteGames));
    }
  }
}
