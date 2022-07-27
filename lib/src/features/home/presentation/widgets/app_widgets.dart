import 'package:flutter/material.dart';
import 'package:template/main.dart';
import 'package:template/values/colors.dart';
import 'package:template/widgets/widgets/text.dart';


/// This class be will be used for reusable widgets throughout the app
class AppWidgets {

  /// Shows a snackbar with specific [msg] argument
  static void showSnackBar(String? msg, {Color? color}) {
    var currentScaffold = globalScaffoldKey.currentState!;
    currentScaffold
        .hideCurrentSnackBar();
    currentScaffold.showSnackBar(SnackBar(
      backgroundColor: color ?? AppColors.blurple,
      content: AppText(
        text: msg,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ));
  }
}
