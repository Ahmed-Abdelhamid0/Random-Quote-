import 'package:clean_app/features/favorite/presentation/screens/fav.dart';
import 'package:clean_app/features/random_quote/presentation/screens/quote_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String quoteScrn = '/';
  static const String favScrn = '/favscreen';
}

// final Map<String,WidgetBuilder> routes = {
//   AppRoutes.quoteScrn:(context)=>QuoteScreen(),
//   AppRoutes.favScrn:(context)=>FavouriteScreen(),
// };

Route ? onGenRoutes(RouteSettings setting) {
  switch (setting.name) {
    case AppRoutes.quoteScrn:
      return MaterialPageRoute(builder: (context) => QuoteScreen());
    case AppRoutes.favScrn:
      return MaterialPageRoute(builder: (context) => FavouriteScreen());
  }
}
