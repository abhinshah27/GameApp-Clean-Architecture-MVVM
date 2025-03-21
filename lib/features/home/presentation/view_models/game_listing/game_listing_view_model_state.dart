part of 'game_listing_view_model_bloc.dart';

@freezed
class GameListingViewModelState with _$GameListingViewModelState {
  const factory GameListingViewModelState.loading({required GameSortBy selectedSorting}) = _Loading;
  const factory GameListingViewModelState.loaded({required List<GameEntity> games,required GameSortBy selectedSorting}) = _Loaded;
  const factory GameListingViewModelState.failure({required int statusCode,required String message,required GameSortBy selectedSorting}) = _Failure;
}
