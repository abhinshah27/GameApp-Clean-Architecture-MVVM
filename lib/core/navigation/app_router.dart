import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/enums/app_enums.dart';
import 'package:game_app_architecture_mvvm/core/navigation/app_routes.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/pages/game_details_page.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details/game_details_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_details_favorite/game_details_favorite_view_model_cubit.dart';
import 'package:game_app_architecture_mvvm/features/game_details/presentation/view_models/game_screenshot_slider/game_screenshot_slider_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/pages/favorite_games_page.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/pages/home_page.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/favorite_games/favorite_games_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/game_listing/game_listing_view_model_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../di/service_locator.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic>? onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<GameListingViewModelBloc>(
            create: (context) => sl<GameListingViewModelBloc>()
              ..add(GameListingViewModelEvent.getGames(sortBy: GameSortBy.popularity)),
            child: HomePage(),
          ),
        );

      case AppRoutes.favoriteGames:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sl<FavoriteGamesViewModelBloc>()
              ..add(FavoriteGamesViewModelEvent.getFavoriteGames()),
            child: FavoriteGamesPage(),
          ),
        );

      case AppRoutes.gameDetails:
        final gameDetailsPageArguments = settings.arguments as GameDetailsPageArguments;
        return MaterialPageRoute(
          settings: settings,
          builder: (context) => MultiBlocProvider(
            providers: [
              if (gameDetailsPageArguments.favoriteGamesViewModelBloc != null)
                BlocProvider.value(value: gameDetailsPageArguments.favoriteGamesViewModelBloc!),
              BlocProvider<GameDetailsViewModelBloc>(
                create: (context) => sl<GameDetailsViewModelBloc>()
                  ..add(GameDetailsViewModelEvent.getGameDetails(gameId: gameDetailsPageArguments.gameId)),
              ),
              BlocProvider(create: (context) => sl<GameScreenshotSliderViewModelBloc>()),
              BlocProvider(
                create: (context) => sl<GameDetailsFavoriteViewModelCubit>()
                  ..setGameStatus(gameId: gameDetailsPageArguments.gameId),
              ),
            ],
            child: GameDetailsPage(),
          ),
        );
    }
    return null;
  }
}
