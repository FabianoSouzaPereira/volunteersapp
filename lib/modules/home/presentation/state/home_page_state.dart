import 'package:equatable/equatable.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/home_card.dart';

abstract class HomeState extends Equatable {
  final List<HomeCard> cards;

  const HomeState(this.cards);

  @override
  List<Object?> get props => [cards];

  HomeState copyWith({required List<HomeCard> cards});
}

class HomeInitial extends HomeState {
  const HomeInitial(super.cards);

  @override
  HomeState copyWith({required List<HomeCard> cards}) {
    return HomeInitial([...cards]);
  }
}

class HomeStateUpdated extends HomeState {
  const HomeStateUpdated(super.cards);

  @override
  HomeState copyWith({required List<HomeCard> cards}) {
    return HomeStateUpdated([...cards]);
  }
}
