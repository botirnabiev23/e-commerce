import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:market_place/core/di/injection.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
)
Future<GetIt> configureDependencies() async => getIt.init();
