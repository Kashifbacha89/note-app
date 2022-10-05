import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_notes/screens/notes_screen.dart';
import 'package:flutter_notes/screens/splash_screen.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Notes SQLite';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
        )
      ),

      home:  const SplashScreen(),
    );
  }
}

