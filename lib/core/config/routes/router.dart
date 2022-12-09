
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/root/presentation/cubit/root_cubit.dart';
import '../../../features/todo/presentation/cubit/todo_cubit.dart';
import '../../../features/todo/presentation/page/todo.dart';
import '../../../root_page.dart';
import '../DI/configure_dependencies.dart';

class AppRoute {
  static const String initialRoute = '/';
  static const String todoRoute = "/todo";

  static Route<dynamic>? routeGenerate(RouteSettings settings,
      TickerProvider tickerProvider) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(builder: (_) => BlocProvider(
          create: (context) =>getIt<RootCubit>(param1: tickerProvider),
          child: const RootPage(),
        ),);
      case todoRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) =>getIt<TodoCubit>(param1: tickerProvider),
            child: const TodoScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
