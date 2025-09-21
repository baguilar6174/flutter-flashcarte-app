// domain/entities/deck.dart
import 'package:equatable/equatable.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/entities/card_entity.dart';

class Deck extends Equatable {
  final String id;
  final String name;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;

  /// MANY-TO-MANY RELATIONSHIP: One deck can contain many cards
  final List<Card>? cards;

  const Deck({
    required this.id,
    required this.name,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    this.cards,
  });

  Deck copyWith({
    String? id,
    String? name,
    String? description,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<Card>? cards,
  }) {
    return Deck(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      cards: cards ?? this.cards,
    );
  }

  // Get the number of cards in this deck
  int get cardCount => cards?.length ?? 0;

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    createdAt,
    updatedAt,
    cards,
  ];

  @override
  String toString() {
    return 'Deck{id: $id, name: $name, description: $description, '
        'createdAt: $createdAt, updatedAt: $updatedAt, '
        'cardCount: $cardCount}';
  }
}
