import 'package:f_kit_x/resource/strings.dart';
import 'package:f_kit_x/resource/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringValues.AppName,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: ThemeColor.Primary,
          primary: ThemeColor.Primary,
        ),
        textTheme: GoogleFonts.jetBrainsMonoTextTheme(),
        useMaterial3: false,
      ),
      scrollBehavior:ScrollConfiguration.of(context).copyWith(scrollbars: false),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
