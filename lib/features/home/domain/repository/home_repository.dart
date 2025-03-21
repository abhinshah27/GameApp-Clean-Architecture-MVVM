import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';

abstract class HomeRepository {
  Future<DataSourceResultModel<List<GameEntity>>> getGameList({required String sortBy});
  Future<DataSourceResultModel<List<GameEntity>>> getFavoriteGames();
}
