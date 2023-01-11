import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wallpaper_ui/screen/favPage.dart';
import 'package:wallpaper_ui/screen/homePage.dart';
import 'package:wallpaper_ui/screen/imagePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) =>const HomePage(),
        "imagePage" : (context) =>const ImagePage(),
        "favPage" :(context) => const FavPage(),
      },
    );
  }
}
