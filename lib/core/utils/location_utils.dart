import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationUtils {
  /// Common function to get current location with proper error handling
  static Future<LocationResult> getCurrentLocation() async {
    try {
      // Check permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return LocationResult.error("Location permission denied");
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return LocationResult.error("Location permission denied permanently");
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
      );

      return LocationResult.success(
        LatLng(position.latitude, position.longitude),
      );
    } catch (e) {
      return LocationResult.error("Unable to get current location: ${e.toString()}");
    }
  }

  /// Common function to get address from coordinates
  static Future<String> getAddressFromLatLng(LatLng position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        String address = '';

        if (place.street != null && place.street!.isNotEmpty) {
          address += '${place.street}, ';
        }
        if (place.locality != null && place.locality!.isNotEmpty) {
          address += '${place.locality}, ';
        }
        if (place.administrativeArea != null &&
            place.administrativeArea!.isNotEmpty) {
          address += "${place.administrativeArea}, ";
        }
        if (place.country != null && place.country!.isNotEmpty) {
          address += place.country!;
        }

        // Remove trailing comma and space
        address = address.replaceAll(RegExp(r', $'), '');
        return address.isNotEmpty ? address : "Address not found";
      }
      return "Address not found";
    } catch (e) {
      return "Address not found";
    }
  }
}

/// Result class for location operations
class LocationResult {
  final bool isSuccess;
  final LatLng? location;
  final String? errorMessage;

  LocationResult._({required this.isSuccess, this.location, this.errorMessage});

  factory LocationResult.success(LatLng location) {
    return LocationResult._(isSuccess: true, location: location);
  }

  factory LocationResult.error(String message) {
    return LocationResult._(
      isSuccess: false,
      errorMessage: message,
    );
  }
}