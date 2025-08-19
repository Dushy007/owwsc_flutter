import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/model/prediction.dart';
import 'package:owwsc_mock_responsive/core/constants/app_constants.dart';
import 'package:owwsc_mock_responsive/core/responsive/responsive_utils.dart';
import 'package:owwsc_mock_responsive/core/theme/app_theme.dart';
import 'package:owwsc_mock_responsive/core/widgets/app_textfield.dart';
import 'package:owwsc_mock_responsive/core/widgets/responsive_text.dart';
import 'package:shimmer/shimmer.dart';
import 'package:http/http.dart' as http;

const String apiKey = "AIzaSyArv4Qfupt603Tu8dn2dmSfhs20drgbF78";

class CustomGoogleMap extends StatefulWidget {
  final LatLng? initialLocation;
  final bool mandatory;
  final bool isReadOnly;

  const CustomGoogleMap({
    this.initialLocation,
    this.mandatory = false,
    this.isReadOnly = false,
    super.key,
  });

  @override
  State<CustomGoogleMap> createState() => _CustomGoogleMapState();
}

class _CustomGoogleMapState extends State<CustomGoogleMap> {
  late GoogleMapController _mapController;
  late TextEditingController _searchController;
  LatLng _currentLocation = const LatLng(
    37.7749,
    -122.4194,
  ); // Default to San Francisco
  String _currentAddress = "";
  Set<Marker> _markers = {};
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _initializeLocation();
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  void _initializeLocation() async {
    if (!mounted) return;

    if (widget.initialLocation != null) {
      // Use provided coordinates
      _currentLocation = widget.initialLocation!;
    } else {
      await _getCurrentLocation();
    }
    if (mounted) {
      _updateMarker();
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _getCurrentLocation() async {
    try {
      // Check permissions
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          if (mounted) {
            setState(() {
              _currentAddress = "Location permission denied";
            });
          }
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        if (mounted) {
          setState(() {
            _currentAddress = "Location permission denied permanently";
          });
        }
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
      );

      if (mounted) {
        setState(() {
          _currentLocation = LatLng(position.latitude, position.longitude);
        });
        await _getAddressFromLatLng(_currentLocation);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _currentAddress = "Unable to get current location";
        });
      }
    }
  }

  Future<void> _getAddressFromLatLng(LatLng position) async {
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
        if (mounted) {
          setState(() {
            _currentAddress =
                address.isNotEmpty ? address : "Address not found";
            _searchController.text = _currentAddress;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _currentAddress = "Address not found";
        });
      }
    }
  }

  void _updateMarker() {
    setState(() {
      _markers = {
        Marker(
          markerId: const MarkerId('selected_location'),
          position: _currentLocation,
          draggable: false,
        ),
      };
    });
  }

  void _openFullScreenMap() {
    if (widget.isReadOnly) return;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return FullScreenMapView(
            initialLocation: _currentLocation,
            onLocationConfirmed: (address, location) {
              if (mounted) {
                setState(() {
                  _currentLocation = location;
                  _currentAddress = address;
                  _searchController.text = address;
                });
                _updateMarker();
                _mapController.animateCamera(CameraUpdate.newLatLng(location));
              }
            },
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ResponsiveUtils.getResponsivePadding(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: GestureDetector(
              onTap: widget.isReadOnly ? null : _openFullScreenMap,
              child: SizedBox(
                width: double.infinity,
                height: ResponsiveUtils.getResponsiveSpacing(context, 200),
                child:
                    _isLoading
                        ? Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        )
                        : Stack(
                          children: [
                            GoogleMap(
                              onMapCreated: (GoogleMapController controller) {
                                if (mounted) {
                                  _mapController = controller;
                                }
                              },
                              initialCameraPosition: CameraPosition(
                                target: _currentLocation,
                                zoom: 15,
                              ),
                              markers: _markers,
                              zoomControlsEnabled: false,
                              scrollGesturesEnabled: false,
                            ),

                            /// Center Pin/Marker
                            // CustomMarker(),
                            Positioned(
                              top: 5,
                              left: 5,
                              right: 5,
                              child: Card(
                                child: AppTextFormField.text(
                                  controller: _searchController,
                                  labelText: '',
                                  enabled: false,
                                ),
                              ),
                            ),
                          ],
                        ),
              ),
            ),
          ),
          SizedBox(height: ResponsiveUtils.getResponsiveSpacing(context, 16)),
          CurrentAddress(
            widget: widget,
            currentAddress: _currentAddress,
            isLoading: _isLoading,
          ),
        ],
      ),
    );
  }
}

class FullScreenMapView extends StatefulWidget {
  final LatLng initialLocation;
  final Function(String address, LatLng location) onLocationConfirmed;

  const FullScreenMapView({
    required this.initialLocation,
    required this.onLocationConfirmed,
    super.key,
  });

  @override
  State<FullScreenMapView> createState() => _FullScreenMapViewState();
}

class _FullScreenMapViewState extends State<FullScreenMapView> {
  late LatLng _selectedLocation;
  final TextEditingController _searchController = TextEditingController();
  String _selectedAddress = "";
  Set<Marker> _markers = {};
  bool _showSearchResults = false;
  List<Prediction> _searchResults = [];
  Timer? _debounceTimer;
  Timer? _searchLocationDebounceTimer;
  late GoogleMapController _googleMapController;
  final double _placeSuggestionContainerPadding = 5;
  bool _isCameraAnimating = false;
  MapType _currentMapType = MapType.normal;

  @override
  void initState() {
    super.initState();
    _selectedLocation = widget.initialLocation;
    _updateMarker();
    _getAddressFromLatLng(_selectedLocation);
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  void _updateMarker() {
    setState(() {
      _markers = {
        Marker(
          markerId: const MarkerId('selected_location'),
          position: _selectedLocation,
          draggable: true,
          onDragEnd: (LatLng position) {
            _selectedLocation = position;
            _getAddressFromLatLng(position);
          },
        ),
      };
    });
  }

  Future<void> _getAddressFromLatLng(LatLng position) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks[0];
        String address = "";

        if (place.street != null && place.street!.isNotEmpty) {
          address += "${place.street}, ";
        }
        if (place.locality != null && place.locality!.isNotEmpty) {
          address += "${place.locality}, ";
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

        if (mounted) {
          setState(() {
            _selectedAddress =
                address.isNotEmpty ? address : "Address not found";
            _searchController.text = _selectedAddress;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _selectedAddress = "Address not found";
        });
      }
    }
  }

  void _onSearchChanged(String value) {
    _searchLocationDebounceTimer?.cancel();

    if (value.isEmpty) {
      if (mounted) {
        setState(() {
          _showSearchResults = false;
          _searchResults = [];
        });
      }
    }

    _searchLocationDebounceTimer = Timer(const Duration(milliseconds: 300), () {
      _performPlacesSearch(value);
    });
  }

  Future<void> _performPlacesSearch(String query) async {
    if (!mounted) return;
    try {
      final String url =
          'https://maps.googleapis.com/maps/api/place/autocomplete/json'
          '?input=${Uri.encodeComponent(query)}'
          '&key=$apiKey';

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data["status"] == "OK") {
          List<Prediction> predictions = [];

          for (var prediction in data["predictions"]) {
            predictions.add(
              Prediction(
                description: prediction["description"],
                placeId: prediction["place_id"],
                structuredFormatting:
                    prediction['structured_formatting'] != null
                        ? StructuredFormatting(
                          mainText:
                              prediction['structured_formatting']['main_text'],
                          secondaryText:
                              prediction['structured_formatting']['secondary_text'],
                        )
                        : null,
              ),
            );
          }

          setState(() {
            _searchResults = predictions;
            _showSearchResults = predictions.isNotEmpty;
          });
        } else {
          // Handle API error
          print('Places API Error: ${data['status']}');
          setState(() {
            _searchResults = [];
            _showSearchResults = false;
          });
        }
      } else {
        print('HTTP Error: ${response.statusCode}');
        setState(() {
          _searchResults = [];
          _showSearchResults = false;
        });
      }
    } catch (e) {
      print("Search Error: $e");
      if (mounted) {
        setState(() {
          _searchResults = [];
          _showSearchResults = false;
        });
      }
    }
  }

  void _selectSearchResult(Prediction prediction) async {
    if (!mounted) return;
    _searchController.text = prediction.description ?? "";
    setState(() {
      _showSearchResults = false;
    });

    if (prediction.placeId != null) {
      await _getPlaceDetails(prediction);
    }
  }

  Future<void> _getPlaceDetails(Prediction prediction) async {
    if (!mounted) return;
    String placeId = prediction.placeId!;
    try {
      final String url =
          'https://maps.googleapis.com/maps/api/place/details/json'
          '?place_id=$placeId'
          '&fields=geometry,formatted_address'
          '&key=$apiKey';

      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        if (data['status'] == 'OK' && data['result'] != null) {
          final result = data['result'];
          final geometry = result['geometry'];
          final location = geometry['location'];

          LatLng newLocation = LatLng(
            location['lat'].toDouble(),
            location['lng'].toDouble(),
          );

          setState(() {
            _selectedLocation = newLocation;
            _selectedAddress =
                result['formatted_address'] ?? "Address not found";
            _isCameraAnimating = true;
          });

          _updateMarker();
          await _googleMapController.animateCamera(
            CameraUpdate.newLatLng(newLocation),
          );
        } else {
          print('Place Details API Error: ${data['status']}');
          // Fallback to geocoding
          _fallbackToGeocoding(prediction.description ?? "");
        }
      } else {
        print('HTTP Error: ${response.statusCode}');
        _fallbackToGeocoding(prediction.description ?? "");
      }
    } catch (e) {
      print('Place Details Error: $e');
      _fallbackToGeocoding(prediction.description ?? "");
    }
  }

  Future<void> _fallbackToGeocoding(String address) async {
    if (!mounted) return;
    try {
      List<Location> locations = await locationFromAddress(address);
      if (locations.isNotEmpty) {
        LatLng newLocation = LatLng(
          locations[0].latitude,
          locations[0].longitude,
        );
        setState(() {
          _selectedLocation = newLocation;
        });
        _updateMarker();
        await _googleMapController.animateCamera(
          CameraUpdate.newLatLng(newLocation),
        );
        _getAddressFromLatLng(newLocation);
      }
    } catch (e) {
      print('Geocoding fallback error: $e');
      // Clear animation state on error
      if (mounted) {
        setState(() {
          _isCameraAnimating = false;
        });
      }
    }
  }

  void _onCameraMove(CameraPosition position) {
    _debounceTimer?.cancel();

    setState(() {
      _selectedLocation = position.target;
    });
    _updateMarker();
  }

  void _onCameraIdle() {
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      if (mounted) {
        _isCameraAnimating = false;
        _getAddressFromLatLng(_selectedLocation);
      }
    });
  }

  void _confirmLocation() {
    widget.onLocationConfirmed(_selectedAddress, _selectedLocation);
    context.pop();
  }

  void _cancelSelection() {
    context.pop();
  }

  void _toggleMapType() {
    setState(() {
      _currentMapType =
          _currentMapType == MapType.normal
              ? MapType.satellite
              : MapType.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              if (mounted) {
                _googleMapController = controller;
              }
            },
            initialCameraPosition: CameraPosition(
              target: _selectedLocation,
              zoom: 15,
            ),
            markers: _markers,
            onCameraMove: _onCameraMove,
            onCameraIdle: _onCameraIdle,
            zoomControlsEnabled: false,
            mapType: _currentMapType,
          ),
          // Center Pin/Marker
          // CustomMarker(),
          Positioned(
            top: 5,
            left: 5,
            right: 5,
            child: Column(
              children: [
                Card(
                  child: AppTextFormField(
                    controller: _searchController,
                    labelText: '',
                    onChanged: _onSearchChanged,
                    suffixIcon:
                        _searchController.text.isNotEmpty
                            ? IconButton(
                              onPressed: () {
                                _searchController.clear();
                                setState(() {
                                  _showSearchResults = false;
                                  _searchResults = [];
                                });
                              },
                              icon: Icon(Icons.clear),
                            )
                            : null,
                  ),
                ),
                if (_showSearchResults && _searchResults.isNotEmpty)
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: _placeSuggestionContainerPadding,
                    ),
                    decoration: BoxDecoration(color: Colors.white),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _searchResults.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(_searchResults[index].description ?? ""),
                          onTap:
                              () => _selectSearchResult(_searchResults[index]),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
          // Target and Satellite icons positioned above the buttons
          Positioned(
            bottom: 70, // Position above the button row
            left: 5,
            right: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Target icon (left side)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.my_location, color: AppTheme.primaryColor),
                    tooltip: 'Go to current location',
                  ),
                ),
                // Satellite icon (right side)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    onPressed: _toggleMapType,
                    icon: Icon(
                      _currentMapType == MapType.normal
                          ? Icons.satellite_alt
                          : Icons.map,
                      color: AppTheme.primaryColor,
                    ),
                    tooltip:
                        _currentMapType == MapType.normal
                            ? 'Switch to satellite view'
                            : 'Switch to normal view',
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 5,
            left: 5,
            right: 5,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(color: Colors.white),
                    child: OutlinedButton(
                      onPressed: _cancelSelection,
                      child: ResponsiveText(
                        'Cancel',
                        baseFontSize: AppConstants.fontSizeL,
                        fontWeight: FontWeight.w600,
                        color: AppTheme.primaryColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: ResponsiveUtils.getResponsiveSpacing(context, 5),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _isCameraAnimating ? null : _confirmLocation,
                    child: ResponsiveText(
                      'Confirm',
                      baseFontSize: AppConstants.fontSizeL,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomMarker extends StatelessWidget {
  const CustomMarker({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.location_on,
            size: ResponsiveUtils.getResponsiveFontSize(context, 40),
            color: Colors.red,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
          // Pin anchor point
          Container(
            width: 4,
            height: 4,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurrentAddress extends StatelessWidget {
  final String currentAddress;
  final bool isLoading;

  const CurrentAddress({
    super.key,
    required this.widget,
    required this.currentAddress,
    required this.isLoading,
  });

  final CustomGoogleMap widget;

  static const double _shimmerBorderRadius = 4.0;
  static const double _addressSpacing = 2.0;

  /// Builds the shimmer loading state for the address
  Widget _buildShimmerLoading(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildShimmerContainer(
            width: double.infinity,
            height: ResponsiveUtils.getResponsiveFontSize(context, 16),
          ),
          SizedBox(height: _addressSpacing),
          _buildShimmerContainer(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: ResponsiveUtils.getResponsiveFontSize(context, 16),
          ),
        ],
      ),
    );
  }

  /// Builds individual shimmer container with consistent styling
  Widget _buildShimmerContainer({
    required double width,
    required double height,
  }) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(_shimmerBorderRadius),
      ),
    );
  }

  Widget _buildLoadedContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ResponsiveText(
              'Location',
              baseFontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            Visibility(
              visible: widget.mandatory,
              child: ResponsiveText(' *', baseFontSize: 18, color: Colors.red),
            ),
          ],
        ),
        SizedBox(
          height: ResponsiveUtils.getResponsiveSpacing(
            context,
            _addressSpacing,
          ),
        ),
        ResponsiveText(currentAddress, baseFontSize: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? _buildShimmerLoading(context)
        : _buildLoadedContent(context);
  }
}
