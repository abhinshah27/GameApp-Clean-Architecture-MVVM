import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../network/http_logger_interceptor.dart';

// Data Sources
import 'package:game_app_architecture_mvvm/features/game_details/data/data_source/local/game_details_local_data_source.dart';
import 'package:game_app_architecture_mvvm/features/game_details/data/data_source/remote/game_details_remote_data_source.dart';
import 'package:game_app_architecture_mvvm/features/home/data/data_source/local/home_local_data_source.dart';
import 'package:game_app_architecture_mvvm/features/home/data/data_source/remote/home_remote_data_source.dart';

// Repositories
import 'package:game_app_architecture_mvvm/features/game_details/data/repository/game_details_repository_imp.dart';
import 'package:game_app_architecture_mvvm/features/home/data/repository/home_repository_imp.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/repository/game_details_repository.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/repository/home_repository.dart';

// Use Cases
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/add_to_favorite_games.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/check_game_status.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/get_game_details.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/usecases/remove_favorite_game.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/usecases/get_favorite_games.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/usecases/get_games.dart';

// View Models (BLoC & Cubit)
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details/game_details_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details_favorite/game_details_favorite_view_model_cubit.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_screenshot_slider/game_screenshot_slider_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/game_listing/game_listing_view_model_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> setupServiceLocator() async {
  // ---------------------------
  // Dio Client
  // ---------------------------
  sl.registerSingleton<Dio>(Dio()..interceptors.addAll([HttpLoggerInterceptor()]));

  // ---------------------------
  // Data Sources
  // ---------------------------
  // Remote
  sl.registerLazySingleton<HomeRemoteDataSource>(() => HomeRemoteDataSource(dio: sl<Dio>()));
  sl.registerLazySingleton<GameDetailsRemoteDataSource>(() => GameDetailsRemoteDataSource(dio: sl<Dio>()));

  // Local
  sl.registerLazySingleton<HomeLocalDataSource>(() => HomeLocalDataSource());
  sl.registerLazySingleton<GameDetailsLocalDataSource>(() => GameDetailsLocalDataSource());

  // ---------------------------
  // Repositories
  // ---------------------------
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImp(
      homeRemoteDataSource: sl<HomeRemoteDataSource>(),
      homeLocalDataSource: sl<HomeLocalDataSource>(),
    ),
  );

  sl.registerLazySingleton<GameDetailsRepository>(
    () => GameDetailsRepositoryImp(
      gameDetailsRemoteDataSource: sl<GameDetailsRemoteDataSource>(),
      gameDetailsLocalDataSource: sl<GameDetailsLocalDataSource>(),
    ),
  );

  // ---------------------------
  // Use Cases
  // ---------------------------
  sl.registerLazySingleton<GetGamesUseCase>(() => GetGamesUseCase(homeRepository: sl<HomeRepository>()));

  sl.registerLazySingleton<GetFavoriteGamesUseCase>(
      () => GetFavoriteGamesUseCase(homeRepository: sl<HomeRepository>()));

  sl.registerLazySingleton<GetGameDetailsUseCase>(
      () => GetGameDetailsUseCase(gameDetailsRepository: sl<GameDetailsRepository>()));

  sl.registerLazySingleton<AddToFavoriteGamesUseCase>(
      () => AddToFavoriteGamesUseCase(gameDetailsRepository: sl<GameDetailsRepository>()));

  sl.registerLazySingleton<CheckGameStatusUseCase>(
      () => CheckGameStatusUseCase(gameDetailsRepository: sl<GameDetailsRepository>()));

  sl.registerLazySingleton<RemoveFavoriteGameUseCase>(
      () => RemoveFavoriteGameUseCase(gameDetailsRepository: sl<GameDetailsRepository>()));

  // ---------------------------
  // View Models (BLoC & Cubit)
  // ---------------------------
  sl.registerFactory<GameListingViewModelBloc>(() => GameListingViewModelBloc(gamesUseCase: sl<GetGamesUseCase>()));

  sl.registerFactory<FavoriteGamesViewModelBloc>(
    () => FavoriteGamesViewModelBloc(
      getFavoriteGamesUseCase: sl<GetFavoriteGamesUseCase>(),
      removeFavoriteGameUseCase: sl<RemoveFavoriteGameUseCase>(),
    ),
  );

  sl.registerFactory<GameDetailsViewModelBloc>(
      () => GameDetailsViewModelBloc(getGameDetailsUseCase: sl<GetGameDetailsUseCase>()));

  sl.registerFactory<GameScreenshotSliderViewModelBloc>(() => GameScreenshotSliderViewModelBloc());

  sl.registerFactory<GameDetailsFavoriteViewModelCubit>(
    () => GameDetailsFavoriteViewModelCubit(
      addToFavoriteUseCase: sl<AddToFavoriteGamesUseCase>(),
      removeFavoriteGameUseCase: sl<RemoveFavoriteGameUseCase>(),
      checkGameStatusUseCase: sl<CheckGameStatusUseCase>(),
    ),
  );
}
