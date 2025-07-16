import 'package:encrypt/encrypt.dart';

String encryptString(String rawString) {
  if(rawString==''||rawString.isEmpty){
    return '';
  }
  // 16-byte key and IV, same as your example
  final key = Key.fromUtf8('8080808080808080');
  final iv = IV.fromUtf8('8080808080808080');

  final encrypter = Encrypter(
    AES(key, mode: AESMode.cbc),
  );

  // Encrypt the raw string
  final encrypted = encrypter.encrypt(rawString, iv: iv);

  return encrypted.base64;
}
///
// String encryptAndEncode(String rawString) {
//   // Example: You need to make sure the same key is used as in JavaScript
//   final key = Key.fromUtf8('8080808080808080'); // Your encryption key (must match web key)
//   final iv = IV.fromUtf8('8080808080808080'); // Same IV length or use the same IV used in JS encryption
//
//   final encrypter = Encrypter( AES(key, mode: AESMode.cbc,),); // AES encryption
//   final encrypted = encrypter.encrypt(rawString, iv: iv);
//
//   // URL encode the encrypted string (base64 format)
//   return Uri.encodeComponent(encrypted.base64);
// }
String encryptAndEncode(String rawString) {
  if(rawString==''||rawString.isEmpty){
    return '';
  }
  String encryptionKey = "8080808080808080"; // 16-byte key for AES-128
  String iv = "8080808080808080";            // 16-byte IV

  // Ensure key and IV are 16 bytes (128 bits for AES-128)
  final keyBytes = Key.fromUtf8(encryptionKey);  // 16-byte key for AES-128
  final ivBytes = IV.fromUtf8(iv);               // 16-byte IV

  // Create the encrypter with AES in CBC mode (PKCS7 padding is default)
  final encrypter = Encrypter(AES(keyBytes, mode: AESMode.cbc));

  // Encrypt the username
  final encrypted = encrypter.encrypt(rawString, iv: ivBytes);

  // Convert the encrypted result to Base64 URL-safe format
  // String base64UrlSafe = base64Url.encode(encrypted.bytes);

  // Return the result encoded in the same format as encodeURIComponent in JavaScript
  return Uri.encodeComponent(encrypted.base64);
}

String decryptAndDecode(String rawString) {
  if(rawString==''||rawString.isEmpty){
    return '';
  }
  String encryptionKey = "8080808080808080"; // 16-byte key for AES-128
  String iv = "8080808080808080";            // 16-byte IV

  // Ensure key and IV are 16 bytes (128 bits for AES-128)
  final keyBytes = Key.fromUtf8(encryptionKey);  // 16-byte key for AES-128
  final ivBytes = IV.fromUtf8(iv);               // 16-byte IV

  // Create the encrypter with AES in CBC mode
  final encrypter = Encrypter(AES(keyBytes, mode: AESMode.cbc));

  // Decode the encrypted text (URL-decoded, then Base64-decoded)
  final decodedText = Uri.decodeComponent(rawString); // Undo encodeURIComponent
  final encrypted = Encrypted.fromBase64(decodedText);    // Convert back from Base64

  // Decrypt the text
  final decrypted = encrypter.decrypt(encrypted, iv: ivBytes);

  // Return the original plaintext
  return decrypted;
}
String decryptString(String rawString) {
  if(rawString==''||rawString.isEmpty){
    return '';
  }
  String encryptionKey = "8080808080808080"; // 16-byte key for AES-128
  String iv = "8080808080808080";            // 16-byte IV

  // Ensure key and IV are 16 bytes (128 bits for AES-128)
  final keyBytes = Key.fromUtf8(encryptionKey);  // 16-byte key for AES-128
  final ivBytes = IV.fromUtf8(iv);               // 16-byte IV

  // Create the encrypter with AES in CBC mode
  final encrypter = Encrypter(AES(keyBytes, mode: AESMode.cbc));

  // Decode the encrypted text (URL-decoded, then Base64-decoded)
  // final decodedText = Uri.decodeComponent(rawString); // Undo encodeURIComponent
  final encrypted = Encrypted.fromBase64(rawString);    // Convert back from Base64

  // Decrypt the text
  final decrypted = encrypter.decrypt(encrypted, iv: ivBytes);

  // Return the original plaintext
  return decrypted;
}

bool looksLikeBase64(String str) {
  final base64Regex = RegExp(r'^[A-Za-z0-9+/]+={0,2}$');
  return str.length % 4 == 0 && base64Regex.hasMatch(str);
}

String safeDecrypt(String val) {
  if (val.isEmpty) return val;

  if (looksLikeBase64(val)) {
    try {
      return decryptString(val); // your actual decryption method
    } catch (e) {
      print('Decryption failed for "$val": $e');
    }
  }

  return val; // fallback if not base64 or decryption fails
}

String safeEncryptAndEncode(String? value) {
  if (value == null || value.isEmpty || value =='') {
    return 'Wwzpa2LygAJqAK1uM94i8A%3D%3D';
  }
  return encryptAndEncode(value);
}


