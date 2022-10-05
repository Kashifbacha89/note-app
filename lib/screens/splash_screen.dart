import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notes/screens/notes_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      children: [
        Card(
          elevation: 9.0,
          shadowColor: Colors.black,
          child: Image.asset('assets/images/note.png',

          height: 100,
          ),
        ),
        const SizedBox(height: 20,),
        const Text('Note your daily task',style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.italic),),

      ],
    ),


        nextScreen: NotesScreen(),
    splashIconSize: 350,
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: Colors.grey,
      duration: 2000,

    );
  }
}
