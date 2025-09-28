import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/core/core.dart';
import 'package:flutter_flashcarte_app/features/cards/domain/entities/entities.dart';

class DeckItem extends StatelessWidget {
  final Deck deck;
  final List<Color> gradientColors;
  final VoidCallback? onTap;

  const DeckItem({
    super.key,
    required this.deck,
    this.gradientColors = const [Color(0xFFFF79C6), Color(0xFFB63E96)],
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: Dimens.spaceV80,
        margin: EdgeInsets.symmetric(vertical: Dimens.space10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.borderRadius),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: gradientColors,
          ),
        ),
        child: Stack(
          children: [
            // Main content
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Title
                  Container(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: Text(
                      deck.name,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  // Bottom section with subtitle and value
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: BorderRadius.circular(Dimens.borderRadius),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Words",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          deck.cardCount.toString(),
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Top right icon
            Positioned(
              top: 16,
              right: 16,
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.3),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_outward_outlined,
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
