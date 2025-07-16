import 'dart:convert';
import 'package:owwsc_mock_responsive/core/utils/encrypt_decrypt.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Helper class for managing local storage operations in Flutter
/// Uses the newer SharedPreferencesAsync API (recommended over legacy SharedPreferences)
/// Supports: int, double, bool, String, List<String>, and complex objects via JSON
class LocalStorageHelper {
  static final SharedPreferencesAsync _prefs = SharedPreferencesAsync();

  // ==================== GENERIC SETTER/GETTER ====================

  /// Generic setter method that handles all supported data types
  /// Supports: String, int, double, bool, List<String>, and complex objects (stored as JSON)
  static Future<void> set<T>(String key, T value) async {
    try {
      String valueToStore;
      if (value is String) {
        valueToStore = encryptAndEncode(value);
      } else if (value is int || value is double || value is bool) {
        valueToStore = encryptAndEncode(value.toString());
      } else if (value is List<String>) {
        final encryptedList = value.map((item) => encryptAndEncode(item)).toList();
        valueToStore = encryptAndEncode(jsonEncode(encryptedList));
      } else {
        // For complex objects (Maps, Lists of objects, etc.), convert to JSON
        final jsonString = jsonEncode(value);
        valueToStore = encryptAndEncode(jsonString);
      }

      await _prefs.setString(key, valueToStore);
    } catch (e) {
      throw LocalStorageException('Error storing value for key "$key": $e');
    }
  }

  /// Generic getter method that handles all supported data types
  /// Returns null if key doesn't exist or if there's an error
  static Future<T?> get<T>(String key) async {
    try {
      // Check if key exists first
      if (!await _prefs.containsKey(key)) {
        return null;
      }

      final encryptedValue = await _prefs.getString(key);
      if(encryptedValue == null) return null;

      final decryptedValue = decryptAndDecode(encryptedValue);

      // Handle primitive types based on generic parameter T
      if (T == String) {
        return decryptedValue as T?;
      } else if (T == int) {
        return int.tryParse(decryptedValue) as T?;
      } else if (T == double) {
        return double.tryParse(decryptedValue) as T?;
      } else if (T == bool) {
        return (decryptedValue.toLowerCase() == 'true') as T?;
      } else if (T == List<String>) {
        final List<dynamic> encryptedList = jsonDecode(decryptedValue);
        final decryptedList = encryptedList.map((item) => decryptAndDecode(item.toString())).toList();
        return decryptedList as T?;
      } else {
        // For complex types, decode from JSON
        final decodedValue = jsonDecode(decryptedValue);
        return decodedValue as T?;
      }
    } catch (e) {
      throw LocalStorageException('Error retrieving value for key "$key": $e');
    }
  }

  /// Alternative getter with explicit type specification and default value
  /// Use this when you can't rely on generic type inference or want a default value
  static Future<T> getWithDefault<T>(String key, T defaultValue) async {
    try {
      final value = await get<T>(key);
      return value ?? defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  /// Get value with explicit type (useful when generics can't be inferred)
  static Future<dynamic> getValue(String key, {required Type type}) async {
    try {
      if (!await _prefs.containsKey(key)) {
        return null;
      }

      if (type == String) {
        return await _prefs.getString(key);
      } else if (type == int) {
        return await _prefs.getInt(key);
      } else if (type == double) {
        return await _prefs.getDouble(key);
      } else if (type == bool) {
        return await _prefs.getBool(key);
      } else if (type == List<String>) {
        return await _prefs.getStringList(key);
      } else {
        // For complex types, decode from JSON
        final jsonString = await _prefs.getString(key);
        if (jsonString == null) return null;

        return jsonDecode(jsonString);
      }
    } catch (e) {
      throw LocalStorageException('Error retrieving value for key "$key": $e');
    }
  }

  // ==================== UTILITY OPERATIONS ====================

  /// Check if a key exists in storage
  static Future<bool> hasKey(String key) async {
    try {
      return await _prefs.containsKey(key);
    } catch (e) {
      return false;
    }
  }

  /// Remove a specific key from storage
  static Future<void> remove(String key) async {
    try {
      await _prefs.remove(key);
    } catch (e) {
      throw LocalStorageException('Error removing key "$key": $e');
    }
  }

  /// Clear all stored data
  /// Optional allowList parameter to only clear specific keys (recommended for safety)
  static Future<void> clear({Set<String>? allowList}) async {
    try {
      await _prefs.clear(allowList: allowList);
    } catch (e) {
      throw LocalStorageException('Error clearing storage: $e');
    }
  }

  /// Get all keys stored in preferences
  static Future<Set<String>> getAllKeys() async {
    try {
      return await _prefs.getKeys();
    } catch (e) {
      throw LocalStorageException('Error getting all keys: $e');
    }
  }

  /// Get the size of stored data (number of keys)
  static Future<int> getSize() async {
    try {
      final keys = await _prefs.getKeys();
      return keys.length;
    } catch (e) {
      return 0;
    }
  }

  /// Check if storage is empty
  static Future<bool> isEmpty() async {
    try {
      final keys = await _prefs.getKeys();
      return keys.isEmpty;
    } catch (e) {
      return true;
    }
  }

  // ==================== CONVENIENCE METHODS ====================

  /// Store user session data
  static Future<void> setUserSession(Map<String, dynamic> userData) async {
    await set('user_session', userData);
  }

  /// Retrieve user session data
  static Future<Map<String, dynamic>?> getUserSession() async {
    return await get<Map<String, dynamic>>('user_session');
  }

  /// Check if user session exists
  static Future<bool> hasUserSession() async {
    return await hasKey('user_session');
  }

  /// Clear user session
  static Future<void> clearUserSession() async {
    await remove('user_session');
  }

  /// Store app settings
  static Future<void> setAppSettings(Map<String, dynamic> settings) async {
    await set('app_settings', settings);
  }

  /// Retrieve app settings with default values
  static Future<Map<String, dynamic>> getAppSettings({
    Map<String, dynamic>? defaultSettings,
  }) async {
    final settings = await get<Map<String, dynamic>>('app_settings');
    return settings ?? defaultSettings ?? {};
  }

  /// Update a specific app setting
  static Future<void> updateAppSetting(String settingKey, dynamic value) async {
    final currentSettings = await getAppSettings();
    currentSettings[settingKey] = value;
    await setAppSettings(currentSettings);
  }

  /// Store a list of any type (will be converted to JSON)
  static Future<void> setList<T>(String key, List<T> list) async {
    await set(key, list);
  }

  /// Retrieve a list of any type
  static Future<List<T>?> getList<T>(String key) async {
    try {
      final result = await get<List<dynamic>>(key);
      if (result == null) return null;

      return result.cast<T>();
    } catch (e) {
      throw LocalStorageException('Error casting list for key "$key": $e');
    }
  }

  /// Store multiple key-value pairs at once
  static Future<void> setBatch(Map<String, dynamic> data) async {
    try {
      for (final entry in data.entries) {
        await set(entry.key, entry.value);
      }
    } catch (e) {
      throw LocalStorageException('Error in batch set operation: $e');
    }
  }

  /// Get multiple values at once
  static Future<Map<String, dynamic>> getBatch(List<String> keys) async {
    final Map<String, dynamic> result = {};

    try {
      for (final key in keys) {
        final value = await getValue(key, type: dynamic);
        if (value != null) {
          result[key] = value;
        }
      }
      return result;
    } catch (e) {
      throw LocalStorageException('Error in batch get operation: $e');
    }
  }

  /// Remove multiple keys at once
  static Future<void> removeBatch(List<String> keys) async {
    try {
      for (final key in keys) {
        await remove(key);
      }
    } catch (e) {
      throw LocalStorageException('Error in batch remove operation: $e');
    }
  }

  // ==================== VALIDATION HELPERS ====================

  /// Validate that a value can be stored (for primitive types)
  static bool canStore(dynamic value) {
    return value is String ||
        value is int ||
        value is double ||
        value is bool ||
        value is List<String> ||
        _canJsonEncode(value);
  }

  /// Check if a value can be JSON encoded
  static bool _canJsonEncode(dynamic value) {
    try {
      jsonEncode(value);
      return true;
    } catch (e) {
      return false;
    }
  }
}

/// Custom exception for LocalStorageHelper operations
class LocalStorageException implements Exception {
  final String message;

  const LocalStorageException(this.message);

  @override
  String toString() => 'LocalStorageException: $message';
}