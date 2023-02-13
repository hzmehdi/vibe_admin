import 'package:flutter/material.dart';
import 'package:vibe_admin_panel/ui/pages/admin_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:vibe_admin_panel/firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Vibin',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: AdminHomePage(),
    );
  }
}
