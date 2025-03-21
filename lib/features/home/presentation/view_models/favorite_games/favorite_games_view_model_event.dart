part of 'favorite_games_view_model_bloc.dart';

@freezed
class FavoriteGamesViewModelEvent with _$FavoriteGamesViewModelEvent {
  const factory FavoriteGamesViewModelEvent.getFavoriteGames() = _GetFavoriteGames;
  const factory FavoriteGamesViewModelEvent.removeFavoriteGame({required int id}) = _RemoveFavoriteGame;
}
