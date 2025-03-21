import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/repository/game_details_repository.dart';

/// Use case for retrieving game details by game ID.
class GetGameDetailsUseCase implements BaseParamsUseCase<GameDetailsEntity, int> {
  final GameDetailsRepository _gameDetailsRepository;

  /// Constructor requiring a [GameDetailsRepository] instance.
  GetGameDetailsUseCase({required GameDetailsRepository gameDetailsRepository})
      : _gameDetailsRepository = gameDetailsRepository;

  /// Calls the repository method to fetch game details.
  ///
  /// Takes the game ID as [params] and returns a [DataSourceResultModel]
  /// containing the [GameDetailsEntity] if successful.
  @override
  Future<DataSourceResultModel<GameDetailsEntity>> call(int params) {
    return _gameDetailsRepository.getGameDetails(gameId: params);
  }
}
