import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/features/home/data/data_source/local/home_local_data_source.dart';
import 'package:game_app_architecture_mvvm/features/home/data/data_source/remote/home_remote_data_source.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/repository/home_repository.dart';
import '../models/games_response_model.dart';

/// Implementation of [HomeRepository] that handles fetching game data from local and remote sources.
class HomeRepositoryImp implements HomeRepository {
  final HomeRemoteDataSource _homeRemoteDataSource;
  final HomeLocalDataSource _homeLocalDataSource;

  /// Constructor to inject required data sources.
  HomeRepositoryImp({
    required HomeRemoteDataSource homeRemoteDataSource,
    required HomeLocalDataSource homeLocalDataSource,
  })  : _homeRemoteDataSource = homeRemoteDataSource,
        _homeLocalDataSource = homeLocalDataSource;

  /// Fetches a list of games from the remote source based on the given [sortBy] parameter.
  /// Returns [SuccessResult] with a list of [GameEntity] if successful,
  /// otherwise, returns a [FailureResult] with an error message.
  @override
  Future<DataSourceResultModel<List<GameEntity>>> getGameList({required String sortBy}) async {
    try {
      final result = await _homeRemoteDataSource.getGames(sortBy: sortBy);

      if (result is SuccessResult<GamesResponseModel>) {
        return SuccessResult(
          data: result.data.games?.map((e) => e.mapToEntity()).toList() ?? [],
        );
      } else {
        return FailureResult(
          errorResult: (result as FailureResult<GamesResponseModel>).errorResult,
        );
      }
    } catch (e) {
      return FailureResult(errorResult: AppConstants.defaultErrorModel);
    }
  }

  /// Retrieves a list of favorite games from the local database.
  @override
  Future<DataSourceResultModel<List<GameEntity>>> getFavoriteGames() {
    return _homeLocalDataSource.getFavoriteGames();
  }
}
