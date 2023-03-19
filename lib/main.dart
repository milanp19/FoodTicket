import 'package:flutter/material.dart';
import 'package:foodticket/pageLayouts/home_page.dart';
import 'package:foodticket/pageLayouts/login.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Loginpage(),
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)),
        routes: {
          Loginpage.routeName: (context) => Loginpage(),
          Home.routeName: (context) => Home(),
        });
  }
}
