// domain/entities/tag.dart
import 'package:equatable/equatable.dart';

class Tag extends Equatable {
  final String id;
  final String name;
  final String colorCode;
  final DateTime createdAt;
  final int usageCount;

  const Tag({
    required this.id,
    required this.name,
    required this.colorCode,
    required this.createdAt,
    required this.usageCount,
  });

  // Business logic methods
  bool get isPopular => usageCount > 10;
  bool get isUnused => usageCount == 0;

  Tag incrementUsage() {
    return copyWith(usageCount: usageCount + 1);
  }

  Tag decrementUsage() {
    return copyWith(
      usageCount: (usageCount - 1).clamp(0, double.infinity).toInt(),
    );
  }

  Tag copyWith({
    String? id,
    String? name,
    String? colorCode,
    DateTime? createdAt,
    int? usageCount,
  }) {
    return Tag(
      id: id ?? this.id,
      name: name ?? this.name,
      colorCode: colorCode ?? this.colorCode,
      createdAt: createdAt ?? this.createdAt,
      usageCount: usageCount ?? this.usageCount,
    );
  }

  @override
  List<Object?> get props => [id, name, colorCode, createdAt, usageCount];
}
