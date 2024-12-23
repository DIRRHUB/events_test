import 'package:events_test/presentation/search/bloc/search_cubit.dart';
import 'package:events_test/start/di.dart';
import 'package:events_test/start/routing/main_router.dart';
import 'package:events_test/start/theme/gallery_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oktoast/oktoast.dart';

class OneApp extends StatelessWidget {
  const OneApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = serviceLocator<MainRouter>().router;
    return MaterialApp.router(
      builder: appBuilder,
      title: 'Events task',
      themeMode: ThemeMode.dark,
      theme: GalleryOptionTheme.darkThemeData(context),
      routeInformationProvider: router.routeInformationProvider,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      debugShowCheckedModeBanner: false,
    );
  }

  Widget appBuilder(BuildContext context, Widget? child) {
    return OKToast(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SearchCubit(serviceLocator(), serviceLocator())..init()),
        ],
        child: SafeArea(child: child ?? const SizedBox()),
      ),
    );
  }
}
