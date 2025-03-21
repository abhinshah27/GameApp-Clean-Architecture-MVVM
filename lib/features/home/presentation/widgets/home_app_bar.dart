import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/enums/app_enums.dart';
import '../../../../core/navigation/app_routes.dart';
import '../view_models/game_listing/game_listing_view_model_bloc.dart';

AppBar getHomeAppBar(context) => AppBar(
      title: Text(AppStrings.homeAppBarTitle),
      actionsPadding: EdgeInsets.only(right: 16),
      actions: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, AppRoutes.favoriteGames),
          icon: Icon(Icons.favorite),
        ),
        BlocBuilder<GameListingViewModelBloc, GameListingViewModelState>(
          builder: (context, state) {
            return PopupMenuButton<GameSortBy>(
              style:
                  IconButton.styleFrom(visualDensity: VisualDensity(horizontal: -4), padding: EdgeInsets.only(left: 4)),
              initialValue: state.when(
                  loading: (selectedSortingOption) => selectedSortingOption,
                  loaded: (list, selectedSortingOption) => selectedSortingOption,
                  failure: (int statusCode, String message, GameSortBy selectedSortingOption) => selectedSortingOption),
              position: PopupMenuPosition.under,
              tooltip: 'Sort games',
              icon: Icon(Icons.sort),
              itemBuilder: (BuildContext context) {
                return GameSortBy.values
                    .map(
                      (e) => PopupMenuItem<GameSortBy>(
                        value: e,
                        child: Text(e.getUiString),
                        onTap: () {
                          context.read<GameListingViewModelBloc>().add(GameListingViewModelEvent.getGames(sortBy: e));
                        },
                      ),
                    ).toList();
              },
            );
          },
        ),
      ],
    );
