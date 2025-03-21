import 'package:game_app_architecture_mvvm/core/base/data_mapper.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';

class GamesResponseModel {
  final List<GamesModel>? games;

  GamesResponseModel({required this.games});

  factory GamesResponseModel.fromJson(List json) {
    return GamesResponseModel(games: json.map((e) => GamesModel.fromJson(e)).toList());
  }
}

class GamesModel extends DataMapper<GameEntity> {
  int? id;
  String? title;
  String? thumbnail;
  String? shortDescription;
  String? gameUrl;
  String? genre;
  String? platform;
  String? publisher;
  String? developer;
  String? releaseDate;
  String? freeToGameProfileUrl;

  GamesModel(
      {this.id,
      this.title,
      this.thumbnail,
      this.shortDescription,
      this.gameUrl,
      this.genre,
      this.platform,
      this.publisher,
      this.developer,
      this.releaseDate,
      this.freeToGameProfileUrl});

  GamesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    shortDescription = json['short_description'];
    gameUrl = json['game_url'];
    genre = json['genre'];
    platform = json['platform'];
    publisher = json['publisher'];
    developer = json['developer'];
    releaseDate = json['release_date'];
    freeToGameProfileUrl = json['freetogame_profile_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    data['short_description'] = shortDescription;
    data['game_url'] = gameUrl;
    data['genre'] = genre;
    data['platform'] = platform;
    data['publisher'] = publisher;
    data['developer'] = developer;
    data['release_date'] = releaseDate;
    data['freetogame_profile_url'] = freeToGameProfileUrl;
    return data;
  }

  @override
  GameEntity mapToEntity() {
    return GameEntity(
        id: id!,
        title: title!,
        thumbnail: thumbnail!,
        shortDescription: shortDescription!,
        gameUrl: gameUrl!,
        genre: genre!,
        platform: platform!,
        publisher: publisher!,
        developer: developer!,
        releaseDate: releaseDate!,
        freeToGameProfileUrl: freeToGameProfileUrl!);
  }
}
