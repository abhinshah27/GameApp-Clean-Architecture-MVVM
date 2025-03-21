import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/repository/game_details_repository.dart';

/// Use case for removing a game from the user's favorites list.
class RemoveFavoriteGameUseCase implements BaseParamsUseCase<void, int> {
  final GameDetailsRepository _gameDetailsRepository;

  /// Constructor requiring a [GameDetailsRepository] instance.
  RemoveFavoriteGameUseCase({required GameDetailsRepository gameDetailsRepository})
      : _gameDetailsRepository = gameDetailsRepository;

  /// Calls the repository method to remove a favorite game.
  ///
  /// Takes the game ID as [params] and returns a [DataSourceResultModel]
  /// indicating success or failure.
  @override
  Future<DataSourceResultModel<void>> call(int params) {
    return _gameDetailsRepository.removeFromFavoriteGames(key: params);
  }
}