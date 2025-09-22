import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/core/error/failure.dart';
import 'package:flutter_flashcarte_app/core/usecase/usecase.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

part 'decks_state.dart';

class DecksCubit extends Cubit<DecksState> {
  final GetAllDecks getAllDecks;
  final CreateDeck createDeck;

  DecksCubit({required this.getAllDecks, required this.createDeck})
    : super(DecksState());

  Future<void> getAll() async {
    emit(state.copyWith(isLoading: true, clearError: true));

    final result = await getAllDecks.call(NoParams());

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
          emit(state.copyWith(isLoading: false, decks: data, clearError: true)),
    );
  }

  Future<void> create(String name, String? description) async {
    emit(state.copyWith(isLoading: true, clearError: true));

    final result = await createDeck.call(
      CreateDeckParams(name: name, description: description),
    );

    result.fold(
      (failure) {
        if (failure is DatabaseFailure) {
          emit(
            state.copyWith(
              isLoading: false,
              error: failure.message ?? 'Error creating deck',
            ),
          );
        }
      },
      (data) => emit(
        state.copyWith(
          isLoading: false,
          clearError: true,
          decks: [...state.decks, data],
        ),
      ),
    );
  }
}
