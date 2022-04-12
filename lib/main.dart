import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nbastatsetiya/bloc/ranking/bloc.dart';
import 'package:nbastatsetiya/utils/app_router.gr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return BlocProvider(
      create: (_) => NbaRankBloc(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'NBA Stats',
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
