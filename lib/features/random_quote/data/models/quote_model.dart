import 'package:clean_app/features/random_quote/domain/entities/quote.dart';

class QuoteDataModel extends Quote {
  const QuoteDataModel({
    required String author,
    required String quoteText,
    required int id,
  }) : super(author: author, id: id, quoteText: quoteText);

  factory QuoteDataModel.fromJson(Map<String, dynamic> json) => QuoteDataModel(
    id: json["id"],
    quoteText: json["quote"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "quote": quoteText,
    "author": author,
  };
}
