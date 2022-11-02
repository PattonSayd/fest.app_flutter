part of '../time_widget.dart';

class _DividerWidget extends StatelessWidget {
  final Color color;
  final DividerPosition position;

  const _DividerWidget({
    Key? key,
    required this.color,
    required this.position,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = Radius.circular(1.0);
    final borderRadius = position == DividerPosition.top
        ? const BorderRadius.only(
            topLeft: radius,
            topRight: radius,
          )
        : const BorderRadius.only(
            bottomLeft: radius,
            bottomRight: radius,
          );

    return SizedBox(
      width: 2,
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, borderRadius: borderRadius),
        child: Container(),
      ),
    );
  }
}
