import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_consumer_reusable_sample/provider/my_provider.dart';
import 'package:provider_consumer_reusable_sample/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(color: Colors.blueGrey,titleTextStyle: TextStyle(color: Colors.white,fontSize: 22),iconTheme: IconThemeData(color: Colors.white)),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor:  Colors.blueGrey)
        ),
        home: HomeScreen(),
      ),
    );
  }
}




