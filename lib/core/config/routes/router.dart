import 'package:app_comet_hackathon/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:app_comet_hackathon/features/root/presentation/cubit/root_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../features/auth/presentation/page/register/auth_screen.dart';
import '../../../features/auth/presentation/page/register/choose_career_activity.dart';
import '../../../features/auth/presentation/page/register/create_info_user.dart';
import '../../../features/auth/presentation/page/register/create_password.dart';
import '../../../features/auth/presentation/page/register/fill_code.dart';
import '../../../features/auth/presentation/page/register/login.dart';
import '../../../features/todo/presentation/cubit/todo_cubit.dart';
import '../../../features/todo/presentation/page/todo.dart';
import '../../../root_page.dart';
import '../DI/configure_dependencies.dart';

class AppRoute {
  static const String initialRoute = '/';
  static const String todoRoute = "/todo";
  static const String authScreen = "/auth-screen";
  static const String fillCheckCodeRoute = "/fill-check-code";
  static const String createPasswordScreen = "/create-password";
  static const String createInfoUserScreen = "/create-info-user-screen";
  static const String createCareerActivity = "/create-career-activity";
  static const String loginScreen = "/login";

  static Route<dynamic>? routeGenerate(
      RouteSettings settings, TickerProvider tickerProvider) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<RootCubit>(param1: tickerProvider),
            child: const RootPage(),
          ),
        );
      case todoRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<TodoCubit>(param1: tickerProvider),
            child: const TodoScreen(),
          ),
        );
      case authScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthScreen(),
        );
      case fillCheckCodeRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(param1: tickerProvider),
            child: const CodeFillScreen(),
          ),
        );
      case createPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(param1: tickerProvider),
            child: CreatePassword(),
          ),
        );
      case createInfoUserScreen:
        return MaterialPageRoute(
          builder: (_) => const CreateInfoUser(),
        );
      case createCareerActivity:
        return MaterialPageRoute(
          builder: (_) => const ChooseCareerAndActivity(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(param1: tickerProvider),
            child: LoginScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
