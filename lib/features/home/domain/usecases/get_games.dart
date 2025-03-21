import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/repository/home_repository.dart';

/// Use case for fetching a list of games based on sorting criteria.
class GetGamesUseCase implements BaseParamsUseCase<List<GameEntity>, String> {
  final HomeRepository _homeRepository;

  /// Constructor to inject the required [HomeRepository].
  GetGamesUseCase({required HomeRepository homeRepository}) : _homeRepository = homeRepository;

  /// Calls the repository method to fetch the game list with sorting criteria.
  @override
  Future<DataSourceResultModel<List<GameEntity>>> call(String params) {
    return _homeRepository.getGameList(sortBy: params);
  }
}
