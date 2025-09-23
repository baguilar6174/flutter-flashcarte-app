import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

class FlashcardWidget extends StatelessWidget {
  final CardEntity data;
  final bool isActive;

  const FlashcardWidget({super.key, required this.data, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFFF79C6), Color(0xFFB63E96)],
        ),
        boxShadow: [
          BoxShadow(
            color: [
              Color(0xFFFF79C6),
              Color(0xFFB63E96),
            ].first.withValues(alpha: 0.3),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Main word
            Text(
              data.word,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            // Pronunciation
            if (data.pronunciation.isNotEmpty)
              Text(
                data.pronunciation,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: .8),
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),

            const SizedBox(height: 32),

            // Definition
            Text(
              data.definition,
              style: TextStyle(
                color: Colors.white.withValues(alpha: .9),
                fontSize: 18,
                fontWeight: FontWeight.w400,
                height: 1.4,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 32),

            // Example
            if (data.example.isNotEmpty)
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: .1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  data.example,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: .8),
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    height: 1.3,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
