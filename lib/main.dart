import 'package:flutter/material.dart';
import 'package:praful_portfolio/res/constant.dart';
import 'package:praful_portfolio/view/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      scaffoldBackgroundColor: bgColor ?? Colors.black,
        useMaterial3: true,
        textTheme:Theme.of(context).textTheme
            .apply(bodyColor: Colors.white,)
            .copyWith(
          titleLarge: const TextStyle(color: bodyTextColor),
          titleMedium: const TextStyle(color: bodyTextColor),
        ),
      ),

      home:const SplashView()
    );
  }
}


