import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/features/game_details/data/data_source/local/game_details_local_data_source.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import '../../domain/repository/game_details_repository.dart';
import '../data_source/remote/game_details_remote_data_source.dart';
import '../models/game_details_response_model.dart';

class GameDetailsRepositoryImp implements GameDetailsRepository {
  late final GameDetailsRemoteDataSource _gameDetailsRemoteDataSource;
  late final GameDetailsLocalDataSource _gameDetailsLocalDataSource;

  GameDetailsRepositoryImp({
    required GameDetailsRemoteDataSource gameDetailsRemoteDataSource,
    required GameDetailsLocalDataSource gameDetailsLocalDataSource,
  })  : _gameDetailsRemoteDataSource = gameDetailsRemoteDataSource,
        _gameDetailsLocalDataSource = gameDetailsLocalDataSource;

  @override
  Future<DataSourceResultModel<GameDetailsEntity>> getGameDetails({required int gameId}) async {
    try {
      final successOrFailure = await _gameDetailsRemoteDataSource.getGameDetails(gameId: gameId);
      if (successOrFailure is SuccessResult<GameDetailsResponseModel>) {
        return SuccessResult(data: successOrFailure.data.mapToEntity());
      } else {
        return FailureResult(errorResult: (successOrFailure as FailureResult<GameDetailsResponseModel>).errorResult);
      }
    } catch (e) {
      return FailureResult(errorResult: AppConstants.defaultErrorModel);
    }
  }

  @override
  Future<DataSourceResultModel<String>> addToFavoriteGames({required int key, required GameEntity value}) {
    return _gameDetailsLocalDataSource.addToFavoriteGame(key: key, value: value);
  }

  @override
  Future<DataSourceResultModel<void>> removeFromFavoriteGames({required int key}) {
    return _gameDetailsLocalDataSource.removeFromFavorites(key: key);
  }

  @override
  Future<DataSourceResultModel<bool>> checkGameStatus({required int key}) {
    return _gameDetailsLocalDataSource.isFavoriteGame(key: key);
  }
}
