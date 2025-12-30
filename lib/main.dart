import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_nady_project/core/theme/app_theme.dart';
import 'package:path_provider/path_provider.dart';
import 'app/view/app.dart';
import 'dart:io';
// import 'package:google_maps_flutter_android/google_maps_flutter_android.dart';
// import 'package:google_maps_flutter_platform_interface/google_maps_flutter_platform_interface.dart';

import 'core/providers/app_startup_provider.dart';
import 'features/authentication/domain/entities/user_entity.dart';
import 'features/authentication/data/models/user_dto/user.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDirectory.path);
  Hive.registerAdapter(UserInfoAdapter());
  Hive.registerAdapter(UserAdapter());

  final ProviderContainer container = ProviderContainer();
  await container.read(appStartupProvider.future);
  HttpOverrides.global = MyHttpOverrides();
  await await FlutterFlowTheme.initialize();
  await dotenv.load(fileName: ".env");
  if (kReleaseMode) {
    ErrorWidget.builder = (_) =>
        const Center(child: Text('An error occurred. Please restart the app.'));
  }
  // final GoogleMapsFlutterPlatform mapsImplementation =
  //     GoogleMapsFlutterPlatform.instance;
  // if (mapsImplementation is GoogleMapsFlutterAndroid) {
  //   // Force Hybrid Composition mode.
  //   mapsImplementation.useAndroidViewSurface = true;
  // }

  runApp(UncontrolledProviderScope(container: container, child: const App()));
}
