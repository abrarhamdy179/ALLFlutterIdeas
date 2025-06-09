import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Providers/NewsAppProvider.dart';
import 'Providers/RandomUserProvider.dart';
import 'Providers/RegistrationProvider.dart';
import 'Providers/ShoppingAppProvider.dart';
import 'Providers/WeatherProvider.dart';
import 'Screens/LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => RegistrationProvider(),),
        ChangeNotifierProvider(create: (context) => WeatherProvider(),),
        ChangeNotifierProvider(create: (context) => RandomUserProvider(),),
        ChangeNotifierProvider(create: (context) => NewsAppProvider(),),
        ChangeNotifierProvider(create: (context) => ShoppingAppProvider(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: LoginScreen(),
      ),
    );
  }
}