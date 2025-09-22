part of 'cards_cubit.dart';

class CardsState extends Equatable {
  final bool isLoading;
  final List<Card> cards;
  final String? error;

  const CardsState({this.isLoading = false, this.cards = const [], this.error});

  CardsState copyWith({
    bool? isLoading,
    List<Card>? cards,
    String? error,
    bool clearError = false,
  }) {
    return CardsState(
      isLoading: isLoading ?? this.isLoading,
      cards: cards ?? this.cards,
      error: clearError ? null : error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [isLoading, cards, error];
}
