part of 'decks_cubit.dart';

class DecksState extends Equatable {
  final bool isLoading;
  final List<Deck> decks;
  final Deck? selectedDeck;
  final String? error;

  const DecksState({
    this.isLoading = false,
    this.decks = const [],
    this.selectedDeck,
    this.error,
  });

  DecksState copyWith({
    bool? isLoading,
    List<Deck>? decks,
    Deck? selectedDeck,
    String? error,
    bool clearError = false,
  }) {
    return DecksState(
      isLoading: isLoading ?? this.isLoading,
      decks: decks ?? this.decks,
      selectedDeck: selectedDeck ?? this.selectedDeck,
      error: clearError ? null : error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [isLoading, decks, selectedDeck, error];
}
