import 'package:recipe_app/core/env/env.dart';
import 'package:recipe_app/core/local_storage/local_storage.dart';
import 'package:recipe_app/core/local_storage/local_storage_secure.dart';
import 'package:recipe_app/core/network/http_client.dart';
import 'package:recipe_app/core/network/service/network_service.dart';
import 'package:recipe_app/core/utils/app_event/app_event_broadcaster.dart';
import 'package:recipe_app/core/utils/app_utils.dart';
import 'package:recipe_app/module/auth/auth_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

class MainModule {
  const MainModule._();

  static Future<void> init() async {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    // network
    di.registerSingleton(
      NetworkService(dioClient: Dio()..init(Env.baseUrl)),
    );

    // local storage
    di.registerSingleton<LocalStorage>(
      LocalStorageSecure()..init(),
    );

    // app event
    di.registerSingleton(AppEventBroadcaster());

    // module
    AuthModule.init();
  }
}
