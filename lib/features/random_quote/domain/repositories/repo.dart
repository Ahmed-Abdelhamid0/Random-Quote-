import 'package:clean_app/core/errors/failure.dart';
import 'package:clean_app/features/random_quote/domain/entities/quote.dart';
import 'package:dartz/dartz.dart';

abstract class QuoteRepo {
Future<Either<Failure,Quote>> getQuote();
}