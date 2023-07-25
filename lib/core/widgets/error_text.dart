import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.errMsg});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        style: Styles.homeTitleMedium,
      ),
    );
  }
}
