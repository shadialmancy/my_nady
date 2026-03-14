import 'package:firebase_core/firebase_core.dart';
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
import 'features/authentication/data/models/user_dto/tokens.dart';
import 'features/authentication/data/models/user_dto/user.dart';
import 'firebase_options.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

late ProviderContainer providerContainer;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDirectory.path);
  Hive.registerAdapter(UserInfoAdapter());
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(TokensAdapter());

  HttpOverrides.global = MyHttpOverrides();
  await FlutterFlowTheme.initialize();
  await dotenv.load(fileName: ".env");

  providerContainer = ProviderContainer();
  await providerContainer.read(appStartupProvider.future);

  if (kReleaseMode) {
    ErrorWidget.builder = (_) =>
        const Center(child: Text('An error occurred. Please restart the app.'));
  }

  runApp(const ProviderScopeManager());
}

class ProviderScopeManager extends StatefulWidget {
  const ProviderScopeManager({super.key});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_ProviderScopeManagerState>()?.restart();
  }

  @override
  State<ProviderScopeManager> createState() => _ProviderScopeManagerState();
}

class _ProviderScopeManagerState extends State<ProviderScopeManager> {
  Key _key = UniqueKey();

  Future<void> restart() async {
    providerContainer.dispose();
    providerContainer = ProviderContainer();
    await providerContainer.read(appStartupProvider.future);
    setState(() {
      _key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return UncontrolledProviderScope(
      key: _key,
      container: providerContainer,
      child: const App(),
    );
  }
}
