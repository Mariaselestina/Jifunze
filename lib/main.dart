import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jifunze/provider/level_provider.dart';
import 'package:jifunze/provider/present_provider.dart';
import 'package:provider/provider.dart';

import 'App.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => LevelProvider()),
      ChangeNotifierProvider(create: (_) => PresentProvider()),
    ], child: App()));
  });
}
