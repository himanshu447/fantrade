import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService extends GetxService{
  static SharedPreferencesService? _instance;


  static Future<SharedPreferencesService> getInstance({bool enableLogs = false}) async {

    _instance ??= SharedPreferencesService._(
        await SharedPreferences.getInstance(),
        enableLogs,
      );
    return _instance!;
  }

  final enableLogs;
  final SharedPreferences _preferences;
  SharedPreferencesService._(
      this._preferences,
      this.enableLogs,
      );

  static const _DefaultDatabaseVersionKey = 'database_version_key';
  String? _databaseVersionKey;

  String get databaseVersionKey => _databaseVersionKey ?? _DefaultDatabaseVersionKey;

  set databaseVersionKey(String? key) => _databaseVersionKey = key;

  int get databaseVersion => _getFromDisk(databaseVersionKey) ?? 0;

  set databaseVersion(int value) => _saveToDisk(databaseVersionKey, value);

  String? get activatedViewSubscriptionId => _getFromDisk(databaseVersionKey);

  set activatedViewSubscriptionId(String? value) =>
      _saveToDisk(databaseVersionKey, value);

  void clearPreferences() {
    _preferences.clear();
  }

  dynamic _getFromDisk(String key) {
    var value = _preferences.get(key);
    if (enableLogs) print('key:$key value:$value');
    return value;
  }

  void _saveToDisk(String key, dynamic content) {
    if (enableLogs) print('key:$key value:$content');

    if (content == null) {
      _preferences.remove(key);
      return;
    }

    if (content is String) {
      _preferences.setString(key, content);
    }
    if (content is bool) {
      _preferences.setBool(key, content);
    }
    if (content is int) {
      _preferences.setInt(key, content);
    }
    if (content is double) {
      _preferences.setDouble(key, content);
    }
    if (content is List<String>) {
      _preferences.setStringList(key, content);
    }
  }



}
