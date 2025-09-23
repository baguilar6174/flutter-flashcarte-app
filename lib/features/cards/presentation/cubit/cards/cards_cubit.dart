import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

part 'cards_state.dart';

class CardsCubit extends Cubit<CardsState> {
  final GetAllCards getAllCards;
  final CreateCard createCard;

  CardsCubit({required this.getAllCards, required this.createCard})
    : super(const CardsState());

  Future<void> getAll() async {
    emit(state.copyWith(isLoading: true, clearError: true));

    final result = await getAllCards.call(NoParams());

    result.fold(
      (failure) {
        if (failure is DatabaseFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'Error loading data from database',
            ),
          );
          return;
        }
        if (failure is NoDataFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'No data',
            ),
          );
        }
      },
      (data) =>
          emit(state.copyWith(isLoading: false, cards: data, clearError: true)),
    );
  }

  Future<void> create(
    String word,
    String pronunciation,
    String definition,
    String example,
    String deckId,
  ) async {
    emit(state.copyWith(isLoading: true, clearError: true));

    final result = await createCard.call(
      CreateCardParams(
        word: word,
        pronunciation: pronunciation,
        definition: definition,
        example: example,
        deckId: deckId,
      ),
    );

    result.fold(
      (failure) {
        if (failure is DatabaseFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'Error creating card',
            ),
          );
        }
        if (failure is ValidationFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'Invalid card data',
            ),
          );
        }
      },
      (cardId) async {
        // Refresh the cards list after creation
        await getAll();
      },
    );
  }

  Future<void> getCardsByDeck(String deckId) async {
    emit(state.copyWith(isLoading: true, clearError: true));

    final result = await getAllCards.call(NoParams());

    result.fold(
      (failure) {
        if (failure is DatabaseFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'Error loading data from database',
            ),
          );
          return;
        }
        if (failure is NoDataFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'No data',
            ),
          );
        }
      },
      (data) {
        // Filter cards by deck ID
        final filteredCards = data
            .where((card) => card.deckIds?.contains(deckId) ?? false)
            .toList();
        emit(
          state.copyWith(
            isLoading: false,
            cards: filteredCards,
            clearError: true,
          ),
        );
      },
    );
  }
}
