import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travelSrilanka/ui_components/main_ui.dart';
import 'package:travelSrilanka/ui_components/util/theme.dart';
import 'package:travelSrilanka/ui_components/util/theme_changer.dart';

void main() {
  runApp(TravelSriLanka());
}

class TravelSriLanka extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(Constants.lightTheme, true),
      child: TravelSriLankaAppWithTheme(),
    );
  }
}

class TravelSriLankaAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      theme: theme.getTheme(),
      home: MainUi(
        initialPage: 0,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
