import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import '../../features/auth/data/dto/user_account_data.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage;

  const SecureStorageService([this._storage = const FlutterSecureStorage()]);

  static const String _keyToken = 'auth_token';
  static const String _keyUser = 'auth_user';

  Future<void> saveToken(String token) async {
    await _storage.write(key: _keyToken, value: token);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: _keyToken);
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: _keyToken);
  }

  Future<void> saveUser(UserAccountData user) async {
    final userJson = jsonEncode(user.toJson());
    await _storage.write(key: _keyUser, value: userJson);
  }

  Future<UserAccountData?> getCachedUser() async {
    final rawJson = await _storage.read(key: _keyUser);
    if (rawJson == null || rawJson.isEmpty) {
      return null;
    }
    try {
      final map = jsonDecode(rawJson) as Map<String, dynamic>;
      return UserAccountData.fromJson(map);
    } catch (_) {
      return null;
    }
  }

  Future<void> deleteUser() async {
    await _storage.delete(key: _keyUser);
  }

  Future<void> saveSession({
    required String token,
    required UserAccountData user,
  }) async {
    await saveToken(token);
    await saveUser(user);
  }

  Future<void> clearSession() async {
    await deleteToken();
    await deleteUser();
  }

  Future<void> clearAll() async {
    await _storage.deleteAll();
  }
}

