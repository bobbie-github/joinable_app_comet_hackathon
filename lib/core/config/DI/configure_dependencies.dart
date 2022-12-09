
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../http/http_config.dart';
import '../theme/color.dart';
import 'configure_dependencies.config.dart';
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, //
)
Future<GetIt> configureDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();

  //http config
  HttpOverrides.global = HttpConfigCertificate();

  //theme
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
      //@@scr set color in system bar
      statusBarColor: PrimaryColor,
      statusBarIconBrightness: Brightness.light,
      //@@scr set color text in system bar
      systemNavigationBarColor:PrimaryColor,
      systemNavigationBarDividerColor: WhiteColor,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarContrastEnforced: true,
    ),
  );
  // await EasyLocalization.ensureInitialized();
  // HiveDatabaseService.initialize();
  return init(getIt);
}

