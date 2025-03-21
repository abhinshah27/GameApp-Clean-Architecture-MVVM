import 'package:equatable/equatable.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'game_entity.g.dart';

@HiveType(typeId: 0)
class GameEntity extends HiveObject with EquatableMixin{
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String thumbnail;
  @HiveField(3)
  final String shortDescription;
  @HiveField(4)
  final String gameUrl;
  @HiveField(5)
  final String genre;
  @HiveField(6)
  final String platform;
  @HiveField(7)
  final String publisher;
  @HiveField(8)
  final String developer;
  @HiveField(9)
  final String releaseDate;
  @HiveField(10)
  final String freeToGameProfileUrl;

   GameEntity(
      {required this.id,
      required this.title,
      required this.thumbnail,
      required this.shortDescription,
      required this.gameUrl,
      required this.genre,
      required this.platform,
      required this.publisher,
      required this.developer,
      required this.releaseDate,
      required this.freeToGameProfileUrl});

  @override
  List<Object?> get props => [
        id,
        title,
        thumbnail,
        shortDescription,
        gameUrl,
        genre,
        platform,
        publisher,
        developer,
        releaseDate,
        freeToGameProfileUrl
      ];
}
