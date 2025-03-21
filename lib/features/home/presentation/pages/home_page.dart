import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/widgets/request_failure_view.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/view_models/game_listing/game_listing_view_model_bloc.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/widgets/game_list_item_loader_view.dart';
import 'package:game_app_architecture_mvvm/features/home/presentation/widgets/game_list_item_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getHomeAppBar(context),
      body: Column(
        children: [
          Expanded(child: BlocBuilder<GameListingViewModelBloc, GameListingViewModelState>(builder: (context, state) {
            return state.when(loading: (sortingOption) {
              return ListView.builder( padding: EdgeInsets.all(16),
                itemCount: AppConstants.gameListLoaderItemCount,
                itemBuilder: (context, index) => GameListItemLoaderView(),
              );
            }, loaded: (games, sortBy) {
              return ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: games.length,
                itemBuilder: (context, index) => GameListItemView(gameEntity: games[index]),
              );
            }, failure: (statusCode, message, sortingOption) {
              return RequestFailureView(
                statusCode: statusCode,
                message: message,
                onRetry: () {
                  context
                      .read<GameListingViewModelBloc>()
                      .add(GameListingViewModelEvent.getGames(sortBy: sortingOption));
                },
              );
            });
          }))
        ],
      ),
    );
  }
}
