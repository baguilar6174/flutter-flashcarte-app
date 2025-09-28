import 'package:flutter/material.dart';

import 'package:flutter_flashcarte_app/features/cards/domain/domain.dart';

class FlipCard extends StatefulWidget {
  final CardEntity data;
  final bool isActive;

  const FlipCard({super.key, required this.data, this.isActive = false});

  @override
  State<FlipCard> createState() => _FlipCardState();
}

class _FlipCardState extends State<FlipCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    // _animation = Tween<double>(begin: 0, end: 1).animate(
    //   CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    // );
  }

  void _toggleCard() {
    if (_isFront) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
    setState(() {
      _isFront = !_isFront;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: _toggleCard,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0) // Perspective effect
                ..rotateY(_animation.value * 3.14), // Rotate around Y-axis
              child: _animation.value < 0.5
                  ? _buildFrontCard()
                  : _buildBackCard(),
            );
          },
        ),
      ),
    );
  }

  Widget _buildFrontCard() {
    return _buildCard(widget.data.word, widget.data.pronunciation, Colors.blue);
  }

  Widget _buildBackCard() {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()..rotateY(3.14), // Flip the back side
      child: _buildCard(
        widget.data.definition,
        widget.data.example,
        Colors.red,
      ),
    );
  }

  Widget _buildCard(String text, String text2, Color color) {
    return Container(
      width: double.infinity,
      height: 500, // TODO: Dynamic height
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
              text,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: Colors.white,
                letterSpacing: 1.2,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 16),

            // Pronunciation
            // if (data.pronunciation.isNotEmpty)
            Text(
              text2,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Colors.white.withValues(alpha: .8),
              ),
              textAlign: TextAlign.center,
            ),

            // const SizedBox(height: 32),

            // // Definition
            // Text(
            //   "data.definition",
            //   style: TextStyle(
            //     color: Colors.white.withValues(alpha: .9),
            //     fontSize: 18,
            //     fontWeight: FontWeight.w400,
            //     height: 1.4,
            //   ),
            //   textAlign: TextAlign.center,
            // ),

            // const SizedBox(height: 32),

            // // Example
            // // if (data.example.isNotEmpty)
            // Container(
            //   padding: const EdgeInsets.all(20),
            //   decoration: BoxDecoration(
            //     color: Colors.white.withValues(alpha: .1),
            //     borderRadius: BorderRadius.circular(16),
            //   ),
            //   child: Text(
            //     "data.example",
            //     style: TextStyle(
            //       color: Colors.white.withValues(alpha: .8),
            //       fontSize: 16,
            //       fontStyle: FontStyle.italic,
            //       height: 1.3,
            //     ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
