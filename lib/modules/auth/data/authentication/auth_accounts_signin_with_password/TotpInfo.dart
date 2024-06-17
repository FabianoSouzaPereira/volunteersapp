import 'package:equatable/equatable.dart';

class TotpInfo extends Equatable {
  const TotpInfo();

  factory TotpInfo.fromJson(Map<String, dynamic> json) {
    return const TotpInfo();
  }

  Map<String, dynamic> toJson() {
    return {};
  }

  @override
  List<Object> get props => [];
}
