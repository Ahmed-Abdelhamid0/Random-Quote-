import 'package:clean_app/core/network/network_service.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkInfoImpl implements NetworkInfoService {
  final InternetConnectionChecker internetConnectionChecker;

  NetworkInfoImpl({required this.internetConnectionChecker});
  @override
  Future<bool> get isConnected async {
    return await internetConnectionChecker.hasConnection;
  }
}
