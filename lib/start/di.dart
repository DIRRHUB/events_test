import 'dart:async';

import 'package:events_test/data/datasources/remote/firebase_remote_datasource_impl.dart';
import 'package:events_test/start/routing/main_router.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton<MainRouter>(
    MainRouter.new,
  );

  serviceLocator.registerLazySingleton<FirebaseRemoteDatasourceImpl>(
    FirebaseRemoteDatasourceImpl.new,
  );

/*   serviceLocator.registerLazySingleton<FirebaseRemoteRepositoryImpl>(
    () => FirebaseRemoteRepositoryImpl(
      serviceLocator<FirebaseRemoteDatasourceImpl>(),
    ),
  );

  serviceLocator.registerLazySingleton<ObtainDataForProcessingUsecase>(
    () => ObtainDataForProcessingUsecase(
      repository: serviceLocator<FirebaseRemoteRepositoryImpl>(),
    ),
  ); */
}

Future<void> reinit() async {
  await serviceLocator.reset();
  await init();
}

void unregisterSingletonByObject<T extends Object>(T instance) {
  if (serviceLocator.isRegistered<T>()) {
    serviceLocator.unregister<T>();
    serviceLocator.registerSingleton<T>(instance);
  } else {
    serviceLocator.registerSingleton<T>(instance);
  }
}
