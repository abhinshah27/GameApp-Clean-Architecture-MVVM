import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';
import 'package:game_app_architecture_mvvm/core/utils/local_database_helper.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Handles local database operations for game details.
class GameDetailsLocalDataSource {
  GameDetailsLocalDataSource();

  /// Adds a game to the favorites list.
  Future<DataSourceResultModel<String>> addToFavoriteGame({
    required int key,
    required GameEntity value,
  }) async {
    try {
      LocalDatabaseHelper.put<GameEntity>(
        box: Hive.box(AppConstants.favoriteBox),
        key: key,
        data: value,
      );
      return SuccessResult(data: AppStrings.favoriteAddSuccessMessage);
    } catch (_) {
      return FailureResult(errorResult: AppConstants.defaultErrorModel);
    }
  }

  /// Removes a game from the favorites list.
  Future<DataSourceResultModel<void>> removeFromFavorites({required int key}) async {
    try {
      LocalDatabaseHelper.remove<GameEntity>(
        box: Hive.box(AppConstants.favoriteBox),
        key: key,
      );
      return SuccessResult(data: null);
    } catch (_) {
      return FailureResult(errorResult: AppConstants.defaultErrorModel);
    }
  }

  /// Checks if a game is in the favorites list.
  Future<DataSourceResultModel<bool>> isFavoriteGame({required int key}) async {
    try {
      final result = LocalDatabaseHelper.isContains<GameEntity>(
        box: Hive.box(AppConstants.favoriteBox),
        key: key,
      );
      return SuccessResult(data: result);
    } catch (_) {
      return FailureResult(errorResult: AppConstants.defaultErrorModel);
    }
  }
}
