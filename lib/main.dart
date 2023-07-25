import 'package:banking/screen/auth/splash_screen.dart';
import 'package:banking/utils/theme_managers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier> (
            builder: (context, ThemeNotifier themeNotifier, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Intrust Financial Services',
              theme: themeNotifier.darkThemes ? darkTheme : lightTheme,
              home: SplashScreen(),
             );
             }
            ),
    );
  }
}


