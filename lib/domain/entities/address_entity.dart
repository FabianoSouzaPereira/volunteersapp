class AddressEntity {
  final String name;
  final String street;
  final Enum AddressType;
  final String neighborhood;
  final String state;
  final String country;
  final int zipcode;
  final int? latitude;
  final int? longitude;

  AddressEntity({
    required this.name,
    required this.street,
    required this.AddressType,
    required this.neighborhood,
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
