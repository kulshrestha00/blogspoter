import 'package:blogspoter/core/theme/theme.dart';
import 'package:blogspoter/firebase_options.dart';
import 'package:flutter/material.dart';
import 'feature/auth/presentation/pages/signIn_page.dart';
import 'package:firebase_core/firebase_core.dart';

Future <void> main() async  {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //  This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'blogspoter',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkThemeMode,
      home: const SignInPage(),
    );
  }
}
