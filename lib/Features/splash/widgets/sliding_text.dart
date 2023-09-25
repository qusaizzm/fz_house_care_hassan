import 'package:flutter/material.dart';
import 'package:fz_hassan/init/constants.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    Key? key,
    required this.slidingAnimation,
  }) : super(key: key);

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Consult me',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: kBgColor),
            ),
          );
        });
  }
}
