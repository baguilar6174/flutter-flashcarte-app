import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_flashcarte_app/features/cards/presentation/presentation.dart';

class DeckDetailPage extends StatelessWidget {
  final String deckId;

  const DeckDetailPage({super.key, required this.deckId});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DecksCubit, DecksState>(
      builder: (context, state) {
        final deck = state.selectedDeck;
        return Scaffold(
          body: SafeArea(
            child: FlashcardCarousel(
              deckName: deck?.name ?? '',
              cards: deck?.cards ?? [],
              onCardChanged: (index) {
                // print('Card changed to index: $index');
              },
              onCardTap: (card) {
                // print('Tapped on: ${card.word}');
              },
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   onPressed: () async {
          //     final cubit = context.read<CardsCubit>();
          //     await cubit.create(
          //       'word',
          //       'pronunciation',
          //       'definition',
          //       'example',
          //       deckId,
          //     );
          //   },
          //   shape: const CircleBorder(),
          //   child: const Icon(Icons.add),
          // ),
        );
      },
    );
  }
}
