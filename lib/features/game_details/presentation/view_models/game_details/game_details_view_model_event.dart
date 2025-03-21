part of 'game_details_view_model_bloc.dart';

@freezed
class GameDetailsViewModelEvent with _$GameDetailsViewModelEvent {
  const factory GameDetailsViewModelEvent.getGameDetails({required int gameId}) = _GetGameDetails;
  const factory GameDetailsViewModelEvent.showGameMinimumRequirements({required BuildContext context}) = _ShowGameMinimumRequirements;
}
