import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kenya_it_hardware/injection_container.config.dart';

final GetIt sl = GetIt.instance;

@injectableInit
void configureInjection() {
  $initGetIt(sl);
}
