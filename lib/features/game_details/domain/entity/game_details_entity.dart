import 'package:equatable/equatable.dart';

class GameDetailsEntity extends Equatable {
  final int id;
  final String title;
  final String? thumbnail;
  final String? status;
  final String? shortDescription;
  final String? description;
  final String? gameUrl;
  final String? genre;
  final String? platform;
  final String? publisher;
  final String? developer;
  final String? releaseDate;
  final String? freeToGameProfileUrl;
  final MinimumSystemRequirementsEntity? minimumSystemRequirements;
  final List<ScreenshotEntity>? screenshots;

  const GameDetailsEntity({
    required this.id,
    required this.title,
    required this.thumbnail,
    required this.status,
    required this.shortDescription,
    required this.description,
    required this.gameUrl,
    required this.genre,
    required this.platform,
    required this.publisher,
    required this.developer,
    required this.releaseDate,
    required this.freeToGameProfileUrl,
    required this.minimumSystemRequirements,
    required this.screenshots,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        thumbnail,
        status,
        shortDescription,
        description,
        gameUrl,
        genre,
        platform,
        publisher,
        developer,
        releaseDate,
        freeToGameProfileUrl,
        minimumSystemRequirements,
        screenshots
      ];

  bool get isAllDataEmpty =>
      (screenshots == null || screenshots!.isEmpty) &&
      (description == null || description!.trim().isEmpty) &&
      genre == null &&
      platform == null &&
      publisher == null &&
      releaseDate == null;
}

class MinimumSystemRequirementsEntity {
  final String? os;
  final String? processor;
  final String? memory;
  final String? graphics;
  final String? storage;

  MinimumSystemRequirementsEntity(
      {required this.os, required this.processor, required this.memory, required this.graphics, required this.storage});

  @override
  String toString() {
    String formatValue(String? value) => (value == null || value.trim().isEmpty) ? 'N/A' : value;

    return 'OS: ${formatValue(os)}\nProcessor: ${formatValue(processor)}\n'
        'Memory: ${formatValue(memory)}\nGraphics: ${formatValue(graphics)}\n'
        'Storage: ${formatValue(storage)}';
  }
}

class ScreenshotEntity {
  final int id;
  final String image;

  ScreenshotEntity({required this.id, required this.image});
}
