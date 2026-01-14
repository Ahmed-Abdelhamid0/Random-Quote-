import 'dart:convert';

import 'package:clean_app/core/errors/exceptions.dart';
import 'package:clean_app/core/utils/strings.dart';
import 'package:clean_app/features/random_quote/data/models/quote_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class QuoteLocalDatasource {
  Future<QuoteDataModel> getData();
  Future<void> cachedData(QuoteDataModel cachedData);
}





class QuoteLocalDatasourceImpl implements QuoteLocalDatasource {

final SharedPreferences sharedPreferences;

  QuoteLocalDatasourceImpl({required this.sharedPreferences});

 @override
  Future<void> cachedData(QuoteDataModel quote) {
    return sharedPreferences.setString(AppStrings.cacheRandomQuote, json.encode(quote));
      
  }


  @override
  Future<QuoteDataModel> getData() {
    final jsonString = sharedPreferences.getString(AppStrings.cacheRandomQuote);
    if(jsonString!=null){
      final cachedQuote = Future.value(QuoteDataModel.fromJson(json.decode(jsonString)));
      return cachedQuote;
    }else{
      throw CacheException();
    }
  }

}
