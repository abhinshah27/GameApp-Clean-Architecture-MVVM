import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/repository/game_details_repository.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';

/// Use case for adding a game to the favorites list.
class AddToFavoriteGamesUseCase implements BaseParamsUseCase<String, AddToFavoriteUseCaseParams> {
  final GameDetailsRepository _gameDetailsRepository;

  /// Constructor with required [GameDetailsRepository] dependency.
  AddToFavoriteGamesUseCase({required GameDetailsRepository gameDetailsRepository})
      : _gameDetailsRepository = gameDetailsRepository;

  /// Calls the repository method to add a game to favorites.
  ///
  /// Takes [AddToFavoriteUseCaseParams] as input and returns a [DataSourceResultModel] containing
  /// either a success message or an error.
  @override
  Future<DataSourceResultModel<String>> call(AddToFavoriteUseCaseParams params) {
    return _gameDetailsRepository.addToFavoriteGames(key: params.key, value: params.value);
  }
}

/// Parameter model for the `AddToFavoriteGamesUseCase` use case.
class AddToFavoriteUseCaseParams {
  final int key;
  final GameEntity value;

  AddToFavoriteUseCaseParams({required this.key, required this.value});
}
