import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movie_list/Config/app_config.dart';
import 'package:my_movie_list/Screen/home_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // 기본 폰트를 notoSansKr로 변경
        textTheme: GoogleFonts.notoSansKrTextTheme(),
        primaryColor: AppConfig.mainColor,
      ),
      home: const HomeScreen(),
    );
  }
}

