import 'package:dio/dio.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/network/api_endpoints.dart';
import 'package:game_app_architecture_mvvm/core/network/api_handler.dart';
import 'package:game_app_architecture_mvvm/features/game_details/data/models/game_details_response_model.dart';

/// Data source responsible for fetching game details from the remote API.
class GameDetailsRemoteDataSource {
  late final Dio _dio;

  GameDetailsRemoteDataSource({required Dio dio}) : _dio = dio;

  /// Fetches game details for a given [gameId] from the API.
  /// Returns a [DataSourceResultModel] containing either the game details or an error result.
  Future<DataSourceResultModel<GameDetailsResponseModel>> getGameDetails({
    required int gameId,
  }) async {
    DataSourceResultModel<GameDetailsResponseModel> result = FailureResult(errorResult: AppConstants.defaultErrorModel);

    // Sending GET request to fetch game details
    await ApiHandler.sendRequest(
      dio: _dio,
      baseUrl: ApiEndPoints.baseUrl,
      endPoint: ApiEndPoints.gamesById(gameId),
      type: RequestType.get,
      onSuccess: (response) {
        // Parsing response data into GameDetailsResponseModel
        final data = GameDetailsResponseModel.fromJson(response.data);
        result = SuccessResult(data: data);
      },
      onError: (response) {
        // Handling API error response
        result = FailureResult(
          errorResult: ErrorResultModel(
            statusCode: response.statusCode ?? AppConstants.defaultErrorCode,
            message: response.statusMessage ?? AppConstants.defaultErrorMessage,
          ),
        );
      },
    );

    return result;
  }
}
