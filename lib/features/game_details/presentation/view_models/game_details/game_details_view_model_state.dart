part of 'game_details_view_model_bloc.dart';

@freezed
class GameDetailsViewModelState with _$GameDetailsViewModelState {
  const factory GameDetailsViewModelState.gameDetailsLoading() = _GameDetailsLoading;
  const factory GameDetailsViewModelState.gameDetailsLoaded({required GameDetailsEntity gameDetailsEntity}) = _GameDetailsLoaded;
  const factory GameDetailsViewModelState.gameDetailsFailure({required int statusCode,required String message }) = _GameDetailsFailure;
}
