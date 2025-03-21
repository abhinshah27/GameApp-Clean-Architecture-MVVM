import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/core/constants/app_strings.dart';

class GameDetailsDescriptionView extends StatelessWidget {
  GameDetailsDescriptionView({super.key, required this.description});

  final String description;

  final ValueNotifier<bool> _isExpanded = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    int numbersOfLines = 1;

    final TextSpan textSpan = TextSpan(
      text: description.trim(),
      style: Theme.of(context).textTheme.bodyMedium,
    );

    final TextPainter textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: MediaQuery.sizeOf(context).width);
    numbersOfLines = textPainter.computeLineMetrics().length;

    return Container(
      margin: EdgeInsets.only(bottom: 20, left: 16, right: 16),
      child: ValueListenableBuilder(
        valueListenable: _isExpanded,
        builder: (context, isExpanded, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                runAlignment: WrapAlignment.end,
                children: [
                  Text(
                    description.trim(),
                    style: Theme.of(context).textTheme.bodyMedium,
                    maxLines: isExpanded ? numbersOfLines : AppConstants.largeTextMaxLines,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              if (numbersOfLines > AppConstants.largeTextMaxLines)
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                      style: TextButton.styleFrom(
                          visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                          tapTargetSize: MaterialTapTargetSize.padded,
                          padding: EdgeInsets.zero,
                      ),
                      onPressed: () => _isExpanded.value = !_isExpanded.value,
                      child: Text(isExpanded ? AppStrings.showLess : AppStrings.showMore)),
                )
            ],
          );
        },
      ),
    );
  }
}
