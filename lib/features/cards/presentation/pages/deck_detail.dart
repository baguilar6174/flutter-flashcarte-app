import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_flashcarte_app/features/cards/presentation/presentation.dart';

class DeckDetailPage extends StatelessWidget {
  final String deckId;

  const DeckDetailPage({super.key, required this.deckId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Deck detail page')),
      body: SafeArea(child: Text('Cards')),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final cubit = context.read<CardsCubit>();
          await cubit.create('front', 'back', deckId);
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
