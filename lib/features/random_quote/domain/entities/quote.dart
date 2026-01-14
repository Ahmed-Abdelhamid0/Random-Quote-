import 'package:equatable/equatable.dart';

class Quote extends Equatable{
  final int id;
  final String quoteText;
  final String author;

  const Quote({required this.id, required this.quoteText, required this.author});

  @override
  
  List<Object?> get props => [id,quoteText,author];

}