part of '../session_widget.dart';

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: Text(
        'Amet incididunt ea exercitation exercitation incididunt.',
        style: TextStyle(
          color: Color.fromARGB(255, 227, 227, 227),
          fontSize: 18,
          fontFamily: AppFonts.steinbeck,
          height: 1.222,
        ),
      ),
    );
  }
}
