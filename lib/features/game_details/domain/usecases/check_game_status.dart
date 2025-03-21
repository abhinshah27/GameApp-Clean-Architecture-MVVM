import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import '../repository/game_details_repository.dart';

/// Use case for checking if a game is marked as a favorite.
class CheckGameStatusUseCase implements BaseParamsUseCase<bool, int> {
  final GameDetailsRepository _gameDetailsRepository;

  /// Constructor requiring a [GameDetailsRepository] instance.
  CheckGameStatusUseCase({required GameDetailsRepository gameDetailsRepository})
      : _gameDetailsRepository = gameDetailsRepository;

  /// Calls the repository method to check if a game is a favorite.
  ///
  /// Takes the game ID as [params] and returns a [DataSourceResultModel]
  /// containing `true` if the game is a favorite, otherwise `false`.
  @override
  Future<DataSourceResultModel<bool>> call(int params) {
    return _gameDetailsRepository.checkGameStatus(key: params);
  }
}
