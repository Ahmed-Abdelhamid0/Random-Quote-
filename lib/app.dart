
import 'package:clean_app/config/routes/routes.dart';
import 'package:clean_app/config/themes/themes.dart';
import 'package:clean_app/core/utils/constants.dart';
import 'package:clean_app/core/utils/strings.dart';
import 'package:flutter/material.dart';

class CleanApp extends StatefulWidget {
  const CleanApp({super.key});

  @override
  State<CleanApp> createState() => _CleanAppState();
}

class _CleanAppState extends State<CleanApp> {
  @override
  void initState() {
    AppConstants.showToast(msg: AppStrings.homeScrnNavTitle);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appTitle,
      theme: appTheme(),
      onGenerateRoute: onGenRoutes,
    );
  }
}
