import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

// void main() async => runApp(FlashChat());
void main() async {
  // Ensure that Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: 'your apiKey',
    appId: 'your appId',
    messagingSenderId: 'your messagingSenderId',
    projectId: 'your projectId',
    storageBucket: 'your storageBucket',
  ));
  //
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.route,
      routes: {
        ChatScreen.route: (context) => ChatScreen(),
        LoginScreen.route: (context) => LoginScreen(),
        RegistrationScreen.route: (context) => RegistrationScreen(),
        WelcomeScreen.route: (context) => WelcomeScreen(),
      },
    );
  }
}
