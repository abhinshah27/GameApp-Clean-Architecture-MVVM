class ApiEndPoints {
  ApiEndPoints._();

  static const String baseUrl = 'https://www.freetogame.com/api';

  static const String games = '/games';

  static String gamesById(int id) => '/game?id=$id';
}
