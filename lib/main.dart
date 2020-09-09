import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'App.dart';

void main() {

    WidgetsFlutterBinding.ensureInitialized();   SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]).then((_){
    runApp(App());
   });
}
