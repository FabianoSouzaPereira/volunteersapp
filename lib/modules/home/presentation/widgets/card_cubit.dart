import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:volunteersapp/modules/home/presentation/widgets/home_card.dart';

class CardCubit extends Cubit<List<HomeCard>> {
  CardCubit({List<HomeCard>? initialState}) : super(initialState ?? []);

  void addCard(HomeCard card) {
    // Atualize o estado adicionando o card à lista atual
    emit([...state, card]);
  }
}
