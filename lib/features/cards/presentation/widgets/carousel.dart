import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';
import 'package:flutter_flashcarte_app/features/cards/presentation/widgets/widgets.dart';

class FlashcardCarousel extends StatefulWidget {
  final List<CardEntity> cards;
  final String deckName;
  final Function(int)? onCardChanged;
  final Function(CardEntity)? onCardTap;

  const FlashcardCarousel({
    super.key,
    required this.cards,
    this.onCardChanged,
    this.onCardTap,
    this.deckName = '',
  });

  @override
  State<FlashcardCarousel> createState() => _FlashcardCarouselState();
}

class _FlashcardCarouselState extends State<FlashcardCarousel>
    with TickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  int _currentIndex = 0;
  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8);
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0.0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _nextCard() {
    if (_currentIndex < widget.cards.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousCard() {
    if (_currentIndex > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D3748),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white70,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            // Title Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.deckName,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                  widget.onCardChanged?.call(index);
                },
                itemCount: widget.cards.length,
                itemBuilder: (context, index) {
                  return _buildCard(index);
                },
              ),
            ),

            // Navigation Controls
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: _currentIndex > 0 ? _previousCard : null,
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: _currentIndex > 0 ? Colors.white : Colors.white30,
                      size: 24,
                    ),
                  ),
                  const SizedBox(width: 40),
                  Container(
                    width: 56,
                    height: 56,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: _nextCard,
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF2D3748),
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard(int index) {
    double offset = (_currentPage - index).abs();
    double scale = math.max(0.8, 1 - (offset * 0.2));
    double opacity = math.max(0.6, 1 - (offset * 0.4));

    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return Transform.scale(
          scale: scale,
          child: Transform.translate(
            offset: Offset(0, offset * 20),
            child: Opacity(
              opacity: opacity,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: GestureDetector(
                  onTap: () => widget.onCardTap?.call(widget.cards[index]),
                  child: FlashcardWidget(
                    data: widget.cards[index],
                    isActive: index == _currentIndex,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
