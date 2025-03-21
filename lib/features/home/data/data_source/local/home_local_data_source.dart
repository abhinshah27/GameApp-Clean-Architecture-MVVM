import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/utils/local_database_helper.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:hive_flutter/adapters.dart';

/// Local data source for retrieving and managing favorite games.
class HomeLocalDataSource {
  /// Fetches favorite games stored in the local database.
  /// Returns a [SuccessResult] if data is retrieved successfully,
  /// otherwise returns a [FailureResult] with a default error message.
  Future<DataSourceResultModel<List<GameEntity>>> getFavoriteGames() async {
    try {
      // Retrieve all favorite games from the Hive database.
      final result = LocalDatabaseHelper.getAll<GameEntity>(
        box: Hive.box(AppConstants.favoriteBox),
      );
      return SuccessResult(data: result);
    } catch (e) {
      // Return failure result with default error in case of an exception.
      return FailureResult(errorResult: AppConstants.defaultErrorModel);
    }
  }
}
