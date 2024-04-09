// home_events.dart
import 'package:flutter/material.dart';

abstract class HomeEvent {}

class UpdateIconsEvent extends HomeEvent {
  final List<IconData> updatedIcons;

  UpdateIconsEvent(this.updatedIcons);
}
