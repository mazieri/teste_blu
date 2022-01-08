import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages.dart';

class Tema extends StatelessWidget {
  const Tema({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
    ));

    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData(
        canvasColor: const Color(0xFFf9fbfc),
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF4668d9),
          onSurface: Colors.white,
          brightness: Brightness.light,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: const ColorScheme.dark(
          brightness: Brightness.dark,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (_) => const Splash(),
        "/home": (_) => const HomePage(),
        "/selected": (_) => const SelectedPage(),
      },
    );
  }
}
