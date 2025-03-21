import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';

abstract class GameDetailsRepository{

  Future<DataSourceResultModel<GameDetailsEntity>> getGameDetails({required int gameId});
  Future<DataSourceResultModel<String>> addToFavoriteGames({required int key,required GameEntity value});
  Future<DataSourceResultModel<void>> removeFromFavoriteGames({required int key});
  Future<DataSourceResultModel<bool>> checkGameStatus({required int key});

}