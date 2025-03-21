import 'package:game_app_architecture_mvvm/core/base/data_mapper.dart';
import 'package:game_app_architecture_mvvm/features/game_details/domain/entity/game_details_entity.dart';

class GameDetailsResponseModel extends DataMapper<GameDetailsEntity> {
  int? id;
  String? title;
  String? thumbnail;
  String? status;
  String? shortDescription;
  String? description;
  String? gameUrl;
  String? genre;
  String? platform;
  String? publisher;
  String? developer;
  String? releaseDate;
  String? freeToGameProfileUrl;
  MinimumSystemRequirements? minimumSystemRequirements;
  List<Screenshots>? screenshots;

  GameDetailsResponseModel(
      {this.id,
      this.title,
      this.thumbnail,
      this.status,
      this.shortDescription,
      this.description,
      this.gameUrl,
      this.genre,
      this.platform,
      this.publisher,
      this.developer,
      this.releaseDate,
      this.freeToGameProfileUrl,
      this.minimumSystemRequirements,
      this.screenshots});

  GameDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    thumbnail = json['thumbnail'];
    status = json['status'];
    shortDescription = json['short_description'];
    description = json['description'];
    gameUrl = json['game_url'];
    genre = json['genre'];
    platform = json['platform'];
    publisher = json['publisher'];
    developer = json['developer'];
    releaseDate = json['release_date'];
    freeToGameProfileUrl = json['freetogame_profile_url'];
    minimumSystemRequirements = json['minimum_system_requirements'] != null
        ? MinimumSystemRequirements.fromJson(json['minimum_system_requirements'])
        : null;
    if (json['screenshots'] != null) {
      screenshots = <Screenshots>[];
      json['screenshots'].forEach((v) {
        screenshots!.add(Screenshots.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['thumbnail'] = thumbnail;
    data['status'] = status;
    data['short_description'] = shortDescription;
    data['description'] = description;
    data['game_url'] = gameUrl;
    data['genre'] = genre;
    data['platform'] = platform;
    data['publisher'] = publisher;
    data['developer'] = developer;
    data['release_date'] = releaseDate;
    data['freetogame_profile_url'] = freeToGameProfileUrl;
    if (minimumSystemRequirements != null) {
      data['minimum_system_requirements'] = minimumSystemRequirements!.toJson();
    }
    if (screenshots != null) {
      data['screenshots'] = screenshots!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  GameDetailsEntity mapToEntity() {
    return GameDetailsEntity(
        id: id!,
        title: title!,
        thumbnail: thumbnail,
        status: status,
        shortDescription: shortDescription,
        description: description,
        gameUrl: gameUrl,
        genre: genre,
        platform: platform,
        publisher: publisher,
        developer: developer,
        releaseDate: releaseDate,
        freeToGameProfileUrl: freeToGameProfileUrl,
        minimumSystemRequirements: minimumSystemRequirements?.mapToEntity(),
        screenshots: screenshots?.map((e) => e.mapToEntity()).toList() ?? []);
  }
}

class MinimumSystemRequirements extends DataMapper<MinimumSystemRequirementsEntity> {
  String? os;
  String? processor;
  String? memory;
  String? graphics;
  String? storage;

  MinimumSystemRequirements({this.os, this.processor, this.memory, this.graphics, this.storage});

  MinimumSystemRequirements.fromJson(Map<String, dynamic> json) {
    os = json['os'];
    processor = json['processor'];
    memory = json['memory'];
    graphics = json['graphics'];
    storage = json['storage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['os'] = os;
    data['processor'] = processor;
    data['memory'] = memory;
    data['graphics'] = graphics;
    data['storage'] = storage;
    return data;
  }

  @override
  MinimumSystemRequirementsEntity mapToEntity() {
    return MinimumSystemRequirementsEntity(
        os: os!, processor: processor!, memory: memory!, graphics: graphics!, storage: storage!);
  }
}

class Screenshots extends DataMapper<ScreenshotEntity> {
  int? id;
  String? image;

  Screenshots({this.id, this.image});

  Screenshots.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    return data;
  }

  @override
  ScreenshotEntity mapToEntity() {
    return ScreenshotEntity(id: id!, image: image!);
  }
}
