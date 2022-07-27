import 'package:biniyog/src/core/utils/disable_scroll_glow.dart';
import 'package:biniyog/src/features/home/presentation/pages/home_page.dart';
import 'package:biniyog/src/features/splash/splash_page.dart';
import 'package:biniyog/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

final globalScaffoldKey = GlobalKey<ScaffoldMessengerState>();

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: DisableScrollGlow(),
          child: ScaffoldMessenger(key: globalScaffoldKey, child: child!),
        );
      },
      title: 'Biniyog App',
      theme: ThemeData(
        fontFamily: 'Lato',
        pageTransitionsTheme: const PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        }),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryColor: Colors.yellow,
        primaryColorDark: AppColors.blurple,
      ),
      routes: <String, WidgetBuilder>{
        HomePage.routeName: (ctx) => const HomePage(),
      },
      home: const SplashPage(),
    );
  }
}
