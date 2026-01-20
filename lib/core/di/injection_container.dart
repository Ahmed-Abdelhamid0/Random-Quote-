import 'package:http/http.dart' as http;
import 'package:clean_app/core/network/network_impl.dart';
import 'package:clean_app/core/network/network_service.dart';
import 'package:clean_app/features/random_quote/data/datasources/local.dart';
import 'package:clean_app/features/random_quote/data/datasources/remote.dart';
import 'package:clean_app/features/random_quote/data/repositories/repo_impl.dart';
import 'package:clean_app/features/random_quote/domain/repositories/repo.dart';
import 'package:clean_app/features/random_quote/domain/usecases/generate_quote.dart';
import 'package:clean_app/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';


//ToDo: use comments for this file when create it to be know every debendency//

final sl = GetIt.instance;

Future<void> init() async{
  //! Features
  //Blocs (use regesterFactory for this one)
  sl.registerFactory(() => RandomQuoteCubit(generateRandomQuoteUseCase: sl()));

  //Use Cases
  sl.registerLazySingleton(() => GenerateQuoteUseCase(quoteRepo: sl()));

  //Repos
  sl.registerLazySingleton<QuoteRepo>(
    () => QuoteRepoImpl(
      networkInfo: sl(),
      quoteRomoteDatasource: sl(),
      quoteLocalDatasource: sl(),
    ),
  );

  //Data Sources
  sl.registerLazySingleton<QuoteLocalDatasource>(
    () => QuoteLocalDatasourceImpl(sharedPreferences: sl()),
  );
  sl.registerLazySingleton<QuoteRemoteDatasource>(
    () => QuoteRomoteDatasourceImpl(client: sl()),
  );

  //! Core
  sl.registerLazySingleton<NetworkInfoService>(
    () => NetworkInfoImpl(internetConnectionChecker: sl()),
  );

  //! External
  final sharedprefrences =await SharedPreferences.getInstance();
  sl.registerLazySingleton(()=>sharedprefrences);
  sl.registerLazySingleton(()=>http.Client());
  sl.registerLazySingleton(()=>InternetConnectionChecker.createInstance());
  
}
