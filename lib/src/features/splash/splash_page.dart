import 'dart:async';

import 'package:biniyog/src/core/utils/spacing.dart';
import 'package:biniyog/src/features/home/presentation/pages/home_page.dart';
import 'package:biniyog/values/constants.dart';
import 'package:biniyog/widgets/widgets/text.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _startTimer();
    super.initState();
  }

  _startTimer() {
    Future.delayed(const Duration(milliseconds: 2000)).then((_) {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  AppText(
                    text: Constants.appName,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  bottom: applySpacing(15),
                ),
                alignment: Alignment.bottomCenter,
                width: applySpacing(8),
                height: applySpacing(0.5),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(
                    backgroundColor: Colors.grey.shade400,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.yellow),
                  ),
                ))
          ],
        ));
  }
}
