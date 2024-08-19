import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_vendor_shop_app/screens/main_screen.dart';
import 'package:multi_vendor_shop_app/screens/on_boarding_screen.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyAnN9h1cMMu1F17GDP6EdcFlynWLYPDIx4',
          appId: '1:644066959713:android:1bb06f022a31a25fd86520',
          messagingSenderId: '644066959713',
          projectId: 'shop-app-38464',
          storageBucket: 'shop-app-38464.appspot.com'
      ),

  );
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //remove banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          fontFamily: 'Lato'
      ),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=> const SplashScreen(),
        OnBoardingScreen.id:(context)=> const OnBoardingScreen(),
        MainScreen.id:(context)=> const MainScreen()
      },
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}): super(key: key);
  static const String id='splash-screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final store = GetStorage();

  @override
  void initState() {
    Timer( const Duration(
        seconds: 3
    ), (){
      bool? _boarding =store.read('onBoarding');
      _boarding == null ? Navigator.pushReplacementNamed(context, OnBoardingScreen.id):
      _boarding == true ? Navigator.pushReplacementNamed(context, MainScreen.id):
      // if false
      Navigator.pushReplacementNamed(context, OnBoardingScreen.id);
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,overlays:[] );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/foodly-high-resolution-logo.png'), // logo foodly
      ),
    );
  }
}

// tạo splash screen
