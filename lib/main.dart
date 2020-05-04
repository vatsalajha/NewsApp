import 'package:flutter/material.dart';
import 'package:news_app_api/views/homepage.dart';
import 'splash_screen.dart';
import 'camera_screen.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:camera/camera.dart';
import 'dart:async';

List<CameraDescription> cameras;
Future<Null> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await SystemChrome.setEnabledSystemUIOverlays([]);
  //await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomePage.id: (context) => HomePage(),
        CameraScreen.id: (context) => CameraScreen(),
        SplashScreen.id: (context) => SplashScreen(),
      },
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      //home: HomePage(),
    );
  }
}
