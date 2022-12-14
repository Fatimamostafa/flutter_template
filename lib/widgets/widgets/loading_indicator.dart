import 'package:template/values/colors.dart';
import 'package:flutter/material.dart';


class LoadingIndicator extends StatelessWidget {
  final double size;
  final Color color;

  const LoadingIndicator(
      {Key? key, this.size = 24.0, this.color = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: size,
        width: size,
        child: CircularProgressIndicator(
          backgroundColor: AppColors.blurple,
          valueColor: AlwaysStoppedAnimation<Color>(color),
          value: null,
          strokeWidth: 3.0,
        ),
      ),
    );
  }
}
