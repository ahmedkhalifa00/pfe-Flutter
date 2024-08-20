import 'package:flutter/material.dart';
import 'package:flutterproject/Pages/Splash/splash_page.dart';
import 'package:flutterproject/Resources/routes_manager.dart';
//import 'package:flutterproject/providers/auth_provider.dart';
import 'package:provider/provider.dart';
//import 'firebase_messaging_service.dart'; // Import the service

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splash,
      title: 'kidotrack',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}

/* class _MyAppState extends State<MyApp> {
   late FirebaseMessagingService _firebaseMessagingService;

  @override
  void initState() {
    super.initState();
    _firebaseMessagingService =
        FirebaseMessagingService(); // Initialize the service
  } 


} */

