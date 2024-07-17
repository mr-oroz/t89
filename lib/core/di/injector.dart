import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:t89/core/di/injector.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies({String? environment}) =>
    getIt.init(environment: environment);

    