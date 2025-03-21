import 'package:dio/dio.dart';
import 'package:game_app_architecture_mvvm/core/base/data_source_result_model.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/network/api_endpoints.dart';
import 'package:game_app_architecture_mvvm/core/network/api_handler.dart';
import 'package:game_app_architecture_mvvm/features/home/data/models/games_response_model.dart';

/// Handles remote data fetching for the home feature.
class HomeRemoteDataSource {

  late final Dio _dio;

  HomeRemoteDataSource({required Dio dio}) : _dio =dio;

  /// Fetches a list of games from the API based on the given [sortBy] parameter.
  /// Returns a [SuccessResult] with [GamesResponseModel] if successful,
  /// otherwise, returns a [FailureResult] with an error message.
  Future<DataSourceResultModel<GamesResponseModel>> getGames({
    required String sortBy,
  }) async {
    // Default failure result in case of an error.
    DataSourceResultModel<GamesResponseModel> result =
    FailureResult(errorResult: AppConstants.defaultErrorModel);

    await ApiHandler.sendRequest(
      dio: _dio,
      baseUrl: ApiEndPoints.baseUrl,
      endPoint: ApiEndPoints.games,
      params: {'sort-by': sortBy},
      type: RequestType.get,
      onSuccess: (response) {
        try {
          // Parse response into GamesResponseModel.
          final data = GamesResponseModel.fromJson(response.data);
          result = SuccessResult(data: data);
        } catch (e) {
          result = FailureResult(
            errorResult: ErrorResultModel(
              statusCode: response.statusCode ?? AppConstants.defaultErrorCode,
              message: 'Failed to parse response data',
            ),
          );
        }
      },
      onError: (response) {
        // Handle API errors gracefully.
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
