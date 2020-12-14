import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kenya_it_hardware/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kenya_it_hardware/common/configs/cubit_observer.dart';
import 'package:flutter/services.dart' as service;
import 'package:kenya_it_hardware/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  configureInjection();
  await service.SystemChrome.setPreferredOrientations(
      [service.DeviceOrientation.portraitUp]);
  runApp(App());
}
