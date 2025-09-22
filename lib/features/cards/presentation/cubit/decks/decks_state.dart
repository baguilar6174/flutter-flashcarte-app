part of 'decks_cubit.dart';

class DecksState extends Equatable {
  final bool isLoading;
  final List<Deck> decks;
  final String? error;

  const DecksState({this.isLoading = false, this.decks = const [], this.error});

  DecksState copyWith({
    bool? isLoading,
    List<Deck>? decks,
    String? error,
    bool clearError = false,
  }) {
    return DecksState(
      isLoading: isLoading ?? this.isLoading,
      decks: decks ?? this.decks,
      error: clearError ? null : error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [isLoading, decks, error];
}
