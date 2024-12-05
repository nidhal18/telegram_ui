import 'package:flutter/material.dart';
import 'package:telegram_ui/splash_screen.dart';

void main() {
  runApp(const TelegramCloneApp());
}

class TelegramCloneApp extends StatelessWidget {
  const TelegramCloneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Colors.white)
            .copyWith(surface: Colors.grey[200]),
      ),
      home: const SplashScreen(),
    );
  }
}
