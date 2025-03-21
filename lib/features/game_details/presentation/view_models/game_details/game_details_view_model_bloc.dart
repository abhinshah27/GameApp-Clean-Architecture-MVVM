import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/get_game_details.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/widgets/game_details_requirements_bottom_sheet_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/base/data_source_result_model.dart';

part 'game_details_view_model_event.dart';

part 'game_details_view_model_state.dart';

part 'game_details_view_model_bloc.freezed.dart';

// Bloc to handle game details Screen states
class GameDetailsViewModelBloc extends Bloc<GameDetailsViewModelEvent, GameDetailsViewModelState> {
  late final GetGameDetailsUseCase _getGameDetailsUseCase;

  GameDetailsViewModelBloc({required GetGameDetailsUseCase getGameDetailsUseCase})
      : super(const GameDetailsViewModelState.gameDetailsLoading()) {
    _getGameDetailsUseCase = getGameDetailsUseCase;
    on<GameDetailsViewModelEvent>((event, emit) async {
      await event.map(
          getGameDetails: (event) => _onGetGameDetails(event, emit),
          showGameMinimumRequirements: (event) => _onShowGameMinimumRequirements(event, emit));
    });
  }

  // Fetches game details and emits appropriate states
  Future<void> _onGetGameDetails(_GetGameDetails event, Emitter<GameDetailsViewModelState> emit) async {
    emit(GameDetailsViewModelState.gameDetailsLoading());
    final successOrFailure = await _getGameDetailsUseCase(event.gameId);
    if (successOrFailure is SuccessResult<GameDetailsEntity>) {
      emit(GameDetailsViewModelState.gameDetailsLoaded(gameDetailsEntity: successOrFailure.data));
    } else {
      emit(GameDetailsViewModelState.gameDetailsFailure(
        statusCode: (successOrFailure as FailureResult<GameDetailsEntity>).errorResult.statusCode,
        message: successOrFailure.errorResult.message,
      ));
    }
  }

  // Displays the system requirements bottom sheet if details are loaded
  Future<void> _onShowGameMinimumRequirements(
      _ShowGameMinimumRequirements event, Emitter<GameDetailsViewModelState> emit) async {
    state.whenOrNull(gameDetailsLoaded: (gameDetails) {
      showModalBottomSheet(
          isScrollControlled: true,
          context: event.context,
          builder: (context) => GameDetailsRequirementsBottomSheetView(
                minimumSystemRequirementsEntity: gameDetails.minimumSystemRequirements,
              ));
    });
  }
}
