import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_flashcarte_app/core/core.dart';
import 'package:flutter_flashcarte_app/features/cards/presentation/presentation.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () => context.read<DecksCubit>().getAll(),
          child: BlocBuilder<DecksCubit, DecksState>(
            builder: (_, state) {
              if (state.isLoading) return const Center(child: Loading());
              if (state.error != null) {
                return Center(child: Empty(errorMessage: state.error));
              }
              final data = state.decks;
              if (data.isEmpty) return const Center(child: Empty());
              return ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: state.decks.length,
                padding: EdgeInsets.all(Dimens.space16),
                itemBuilder: (_, index) {
                  final deck = state.decks[index];
                  return index < (state.decks.length)
                      ? DeckItem(deck: deck)
                      : Loading();
                },
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final cubit = context.read<DecksCubit>();
          await cubit.create('test', 'test description');
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
