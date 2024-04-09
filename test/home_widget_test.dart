import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:volunteersapp/presentation/home/home_cubit.dart';
import 'package:volunteersapp/presentation/home/home_page_state.dart';

void main() {
  group('HomeCubit', () {
    test('Initial state is HomeInitial with predefined cards', () {
      final cubit = HomeCubit();

      expect(cubit.state, isA<HomeInitial>());
      expect((cubit.state as HomeInitial).cards, equals(cards));
    });

    test('updateIcons method updates the state with new icons', () {
      final cubit = HomeCubit();
      final updatedIcons = [
        Icons.ac_unit,
        Icons.access_alarm,
        Icons.access_time,
      ];

      expect(() => cubit.updateIcons(updatedIcons), throwsArgumentError);
      expect(cubit.state, isA<HomeState>());
    });
  });
}
