import 'package:anime_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimeApp extends StatelessWidget {
  const AnimeApp({super.key, required this.appRoutes});

  final AppRoutes appRoutes;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Anime App',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            textTheme: GoogleFonts.ralewayTextTheme(
              Theme.of(context).textTheme,
            ),
          ),
          onGenerateRoute: appRoutes.generateRoute,
        );
      },
    );
  }
}
