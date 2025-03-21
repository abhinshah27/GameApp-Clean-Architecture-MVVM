import 'package:game_app_architecture_mvvm/core/constants/app_constants.dart';
import 'package:game_app_architecture_mvvm/features/home/domain/entity/game_entity/game_entity.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';

class LocalDatabaseHelper {
  LocalDatabaseHelper._();

  static Future<void> init() async {
    final databasePath = await getApplicationDocumentsDirectory();
    Hive.init(databasePath.path);
    _registerAdapters();
    await openBox<GameEntity>(box:AppConstants.favoriteBox);
  }

  static void _registerAdapters() {
    Hive.registerAdapter<GameEntity>(GameEntityAdapter());
  }

  static Future<void> put<T>({required Box<T> box, required int key, required T data}) async {
    await box.put(key, data);
  }

  static List<T> getAll<T>({required Box<T> box}) {
    return box.values.toList();
  }

  static Future<void> remove<T>({required Box<T> box,required int key}) async{
    return box.delete(key);
  }

  static bool isContains<T>({required Box<T> box,required int key}) {
    return box.containsKey(key);
  }

  static Future<Box<T>> openBox<T>({required String box}) async {
    return Hive.openBox<T>(box);
  }
}
