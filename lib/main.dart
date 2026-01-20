import 'package:clean_app/app.dart';
import 'package:clean_app/bloc_observer.dart';
import 'package:clean_app/core/di/injection_container.dart' as di;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  Bloc.observer = MyBlocObserver();
  runApp(const CleanApp());
}
