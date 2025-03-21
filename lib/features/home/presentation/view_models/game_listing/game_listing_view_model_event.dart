part of 'game_listing_view_model_bloc.dart';

@freezed
class GameListingViewModelEvent with _$GameListingViewModelEvent {
  const factory GameListingViewModelEvent.getGames({required GameSortBy sortBy}) = _GetGames;
}
