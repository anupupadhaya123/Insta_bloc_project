import 'package:flutter/material.dart';
import 'package:insta_clone/features/presentation/pages/credential/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram Clone",
      darkTheme: ThemeData.dark(),
      home: const SignInPage(),
    );
  }
}
