import 'package:equatable/equatable.dart';

abstract class WorkState extends Equatable {
  @override
  List<Object?> get props => [];
}

class WorkStateInitial extends WorkState {}

class WorkStateLoading extends WorkState {}

class WorkStateLoaded extends WorkState {
  List<Object> get props => [];
}
