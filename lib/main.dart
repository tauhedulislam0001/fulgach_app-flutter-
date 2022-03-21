import 'package:flutter/material.dart';
import 'package:fulgach/pages/home.dart';
import 'package:fulgach/pages/login.dart';
import 'package:fulgach/utilities/route.dart';
import 'package:fulgach/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoute.Login,
      routes: {
        MyRoute.Home :(context) => const Home(),
        MyRoute.Login :(context) => const Login(),
      },
    );
  }
}