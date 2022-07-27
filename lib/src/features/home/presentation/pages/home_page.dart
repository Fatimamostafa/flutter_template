import 'package:biniyog/src/core/utils/spacing.dart';
import 'package:biniyog/values/constants.dart';
import 'package:biniyog/widgets/widgets/text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: AppText(
            text: Constants.homeTitle,
            color: Colors.black,
            fontSize: applySpacing(2),
            fontWeight: FontWeight.w700,
          ),
          centerTitle: false,
          elevation: 0.2,
        ),
        body: Container());
  }
}
