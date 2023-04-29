import 'package:flutter/material.dart';
import 'package:responsive_blog/common/const/theme.dart';
import 'package:responsive_blog/presentation/screen/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBgColor,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: kPrimaryColor),
          ),
          textTheme: const TextTheme(
            bodyMedium: TextStyle(color: kBodyTextColor),         // bodyText1
            bodySmall: TextStyle(color: kBodyTextColor),          // bodyText2
            headlineSmall: TextStyle(color: kBodyTextColor),      // headline5
          )),
      home: const MainScreen(),
    );
  }
}
