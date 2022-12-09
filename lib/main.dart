import 'package:app_comet_hackathon/core/config/routes/router.dart';
import 'package:app_comet_hackathon/core/config/theme/theme.dart';
import 'package:flutter/material.dart';

import 'core/config/DI/configure_dependencies.dart';

void main() async {
  await configureDependencies();

  runApp(const MyAppMain());
}

class MyAppMain extends StatelessWidget {
  const MyAppMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}



class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JoinAble',
      //set up theme
      theme: theme(),
      onGenerateRoute: (settings) => AppRoute.routeGenerate(settings, this),
      initialRoute: AppRoute.initialRoute,
      //disable debug
      debugShowCheckedModeBanner: false,
    );
  }
}