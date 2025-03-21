import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/enums/app_enums.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/usecases/get_games.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_listing_view_model_event.dart';

part 'game_listing_view_model_state.dart';

part 'game_listing_view_model_bloc.freezed.dart';

class GameListingViewModelBloc extends Bloc<GameListingViewModelEvent, GameListingViewModelState> {
  late final GetGamesUseCase _gamesUseCase;

  GameListingViewModelBloc({required GetGamesUseCase gamesUseCase}) : super(GameListingViewModelState.loading(selectedSorting: GameSortBy.popularity)) {
    _gamesUseCase = gamesUseCase;
    on<GameListingViewModelEvent>((event, emit) async {
      await event.map(getGames: (event) => _onGetGames(event, emit));
    });
  }

  // Handles fetching and managing game listings with sorting functionality
  Future<void> _onGetGames(_GetGames event, Emitter<GameListingViewModelState> emit) async {
    emit(GameListingViewModelState.loading(selectedSorting: event.sortBy));
    final successOrFailure = await _gamesUseCase(event.sortBy.getValue);
    if (successOrFailure is SuccessResult<List<GameEntity>>) {
      emit(GameListingViewModelState.loaded(games: successOrFailure.data,selectedSorting: event.sortBy));
    } else {
      emit(GameListingViewModelState.failure(
        selectedSorting:  event.sortBy,
        statusCode: (successOrFailure as FailureResult<List<GameEntity>>).errorResult.statusCode,
        message: successOrFailure.errorResult.message,
      ));
    }
  }
}
