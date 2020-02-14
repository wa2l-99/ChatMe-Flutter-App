import 'package:flutter/material.dart';
import 'package:chat_me/screens/welcome_screen.dart';
import 'package:chat_me/screens/registration_screen.dart';
import 'package:chat_me/screens/login-screen.dart';
import 'package:chat_me/screens/chat_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        // When navigating to the "welcome_screen" route, build the WelcomeScreen widget.
        WelcomeScreen.id: (context) => WelcomeScreen(),
        // When navigating to the "login_screen" route, build the LoginScreen widget.
        LoginScreen.id: (context) => LoginScreen(),
        // When navigating to the "registration_screen" route, build the RegistrationScreen widget.
        RegistrationScreen.id: (context) => RegistrationScreen(),
        // When navigating to the "chat_screen" route, build the ChatScreen widget.
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
