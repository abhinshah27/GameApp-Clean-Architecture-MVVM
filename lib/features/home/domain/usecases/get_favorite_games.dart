import 'package:game_app_architecture_mvvm/core/base/base_params_use_case.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/repository/home_repository.dart';

/// Use case for retrieving a list of favorite games from the local database.
class GetFavoriteGamesUseCase implements BaseParamsUseCase<List<GameEntity>, NoParams> {
  final HomeRepository _homeRepository;

  /// Constructor to inject the required [HomeRepository].
  GetFavoriteGamesUseCase({required HomeRepository homeRepository}) : _homeRepository = homeRepository;

  /// Calls the repository method to fetch favorite games.
  @override
  Future<DataSourceResultModel<List<GameEntity>>> call(NoParams params) {
    return _homeRepository.getFavoriteGames();
  }
}
