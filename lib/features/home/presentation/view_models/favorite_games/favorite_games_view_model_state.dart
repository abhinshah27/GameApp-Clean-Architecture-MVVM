part of 'favorite_games_view_model_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false,equal: false)
class FavoriteGamesViewModelState with _$FavoriteGamesViewModelState {
  const factory FavoriteGamesViewModelState.favoriteGamesLoading() = _FavoriteGamesLoading;
  const factory FavoriteGamesViewModelState.favoriteGamesLoaded({required List<GameEntity> favoriteGames}) = _FavoriteGamesLoaded;
  const factory FavoriteGamesViewModelState.favoriteGamesFailure({required int statusCode,required String message}) = _FavoriteGamesFailure;
}
