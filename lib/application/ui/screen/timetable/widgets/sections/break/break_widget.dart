// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_fest/application/ui/themes/app_colors.dart';
import 'package:flutter_fest/application/ui/themes/app_text_style.dart';

class BreakWidget extends StatelessWidget {
  const BreakWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        left: 14,
        right: 14,
      ),
      child: SizedBox(
        height: 70,
        child: Row(
          children: [
            const Expanded(
              child: _BreakeDecorationWidget(reversed: true),
            ),
            const SizedBox(width: 13),
            Text(
              'BREAK',
              style: AppTextStyle.breakTimeSmall.copyWith(
                color: AppColors.white88,
              ),
            ),
            const SizedBox(width: 13),
            const Expanded(
              child: _BreakeDecorationWidget(reversed: false),
            ),
          ],
        ),
      ),
    );
  }
}

class _BreakeDecorationWidget extends StatelessWidget {
  final bool reversed;
  const _BreakeDecorationWidget({
    Key? key,
    required this.reversed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(double.infinity, 7.0),
      painter: _BreakDecorationPainter(reversed),
    );
  }
}

class _BreakDecorationPainter extends CustomPainter {
  final bool reversed;

  const _BreakDecorationPainter(this.reversed);

  @override
  void paint(Canvas canvas, Size size) {
    const spaceWidth = 6.96;
    const itemWidth = 2.96;
    const itemOffset = 7.13;

    final paint = Paint()
      ..color = AppColors.darkText
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    final itemCount = (size.width / itemOffset).floor() + 1;
    final margin = reversed ? size.width - ((itemCount - 1) * itemOffset) : 0;
    for (var i = 0; i < itemCount; i++) {
      final xOffset = spaceWidth * i + margin;
      final start = Offset(xOffset + itemWidth, 0);
      final end = Offset(xOffset, size.height);

      canvas.drawLine(start, end, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _BreakDecorationPainter oldDelegate) {
    return oldDelegate.reversed != reversed;
  }
}
