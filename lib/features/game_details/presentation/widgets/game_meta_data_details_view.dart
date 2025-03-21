import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_colors.dart';

class GameMetaDataDetailsView extends StatelessWidget {
  const GameMetaDataDetailsView(
      {super.key, required this.genre, required this.platform, required this.publisher, required this.releaseDate});

  final String? genre;
  final String? platform;
  final String? publisher;

  final String? releaseDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        spacing: 8,
        children: [
          if (genre != null || platform != null)
            Row(
              spacing: 8,
              children: [
                if (genre != null) Expanded(child: _GameMetaDataItemView(title: AppStrings.genre, data: genre!)),
                if (platform != null)
                  Expanded(child: _GameMetaDataItemView(title: AppStrings.platform, data: platform!)),
              ],
            ),
          if (publisher != null || releaseDate != null)
            Row(
              spacing: 8,
              children: [
                if (publisher != null)
                  Expanded(child: _GameMetaDataItemView(title: AppStrings.publisher, data: publisher!)),
                if (releaseDate != null)
                  Expanded(child: _GameMetaDataItemView(title: AppStrings.releaseDate, data: releaseDate!)),
              ],
            ),
        ],
      ),
    );
  }
}

class _GameMetaDataItemView extends StatelessWidget {
  const _GameMetaDataItemView({required this.title, required this.data});

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppColors.secondary),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            data,
            style: Theme.of(context).textTheme.bodySmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
