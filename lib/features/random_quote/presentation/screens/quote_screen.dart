import 'package:clean_app/core/utils/strings.dart';
import 'package:clean_app/features/random_quote/presentation/widgets/quote_content.dart';
import 'package:clean_app/features/random_quote/presentation/widgets/refresh_icon.dart';
import 'package:flutter/material.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: Text(AppStrings.appTitle),
     ),
     body: Column(
      children: [
        QuoteContent(),
        RefreshIcon()
      ],
     ),
    );
  }
}

