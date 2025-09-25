import 'package:anime_app/anime_app.dart';
import 'package:anime_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(AnimeApp(appRoutes: AppRoutes()));
}
