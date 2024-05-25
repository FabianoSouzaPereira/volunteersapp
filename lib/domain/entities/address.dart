import 'dart:ffi';

class Address {
  final String name;
  final String street;
  final Enum AddressType;
  final String neighborhood;
  final String State;
  final String Country;
  final int Zipcode;
  final Long? latitude;
  final Long? longitude;

  Address({
    required this.name,
    required this.street,
    required this.AddressType,
    required this.neighborhood,
    required this.State,
    required this.Country,
    required this.Zipcode,
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
