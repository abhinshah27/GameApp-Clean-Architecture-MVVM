// Define an enum for the different log levels
enum Level { debug, info, warning, error, alien }

// Define an enum for the game list sorting
enum GameSortBy { popularity, alphabetical, releaseDate, relevance }

extension GetGameShortingValue on GameSortBy {
  String get getValue {
    switch (index) {
      case 0:
        return name;
      case 1:
        return name;
      case 2:
        return 'release-date';
      case 3:
        return name;
      default:
        return '';
    }
  }

  String get getUiString {
    switch (index) {
      case 0:
        return 'Popularity';
      case 1:
        return 'Alphabetical';
      case 2:
        return 'Release date';
      case 3:
        return 'Relevance';
      default:
        return '';
    }
  }
}
