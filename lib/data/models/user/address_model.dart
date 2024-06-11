import 'dart:ffi';

class AddressModel {
  final String name;
  final String street;
  final Enum AddressType;
  final String neighborhood;
  final String city;
  final String state;
  final String country;
  final int zipcode;
  final Long? latitude;
  final Long? longitude;

  AddressModel({
    required this.name,
    required this.street,
    required this.AddressType,
    required this.neighborhood,
    required this.city,
    required this.state,
    required this.country,
    required this.zipcode,
    this.latitude,
    this.longitude,
  });
}

enum AddressType {
  HOUSE,
  APARTMENT,
  HOTEL,
  HOSTEL,
  CONDO,
  VILLA,
  BED_AND_BREAKFAST,
  RESORT,
  MOTEL,
  CABIN,
  TOWNHOUSE,
  FARMHOUSE,
  TREEHOUSE,
  BOAT,
  CAMPGROUND,
  RV,
}
