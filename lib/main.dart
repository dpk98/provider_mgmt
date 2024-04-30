import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_mgmt_app/home_screen.dart';
import 'package:provider_mgmt_app/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(create: (_) => DataProvider())
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: HomeScreen(),
    );
  }
}