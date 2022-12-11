
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../firebase_options.dart';
import '../../util/notification_service.dart';
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


  await NotificationService.initialedNotificationService();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //http config
  HttpOverrides.global = HttpConfigCertificate();

  //storage
  await GetStorage.init();

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

