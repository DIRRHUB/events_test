import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:events_test/data/datasources/remote/firebase_remote_datasource_impl.dart';
import 'package:events_test/data/repositories/firebase_remote_repository_impl.dart';
import 'package:events_test/domain/usecases/get_all_event_usecase.dart';
import 'package:events_test/domain/usecases/get_event_by_date_usecase.dart';
import 'package:events_test/start/firebase_options.dart';
import 'package:events_test/start/routing/main_router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';

final GetIt serviceLocator = GetIt.instance;

Future<void> init() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  serviceLocator.registerLazySingleton<MainRouter>(
    MainRouter.new,
  );

  serviceLocator.registerLazySingleton<FirebaseRemoteDatasourceImpl>(
    () => FirebaseRemoteDatasourceImpl(firestore: FirebaseFirestore.instance),
  );

  serviceLocator.registerLazySingleton<FirebaseRemoteRepositoryImpl>(
    () => FirebaseRemoteRepositoryImpl(
      serviceLocator<FirebaseRemoteDatasourceImpl>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetAllEventsUsecase>(
    () => GetAllEventsUsecase(
      repository: serviceLocator<FirebaseRemoteRepositoryImpl>(),
    ),
  );

  serviceLocator.registerLazySingleton<GetEventsByDateUsecase>(
    () => GetEventsByDateUsecase(
      repository: serviceLocator<FirebaseRemoteRepositoryImpl>(),
    ),
  );
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
