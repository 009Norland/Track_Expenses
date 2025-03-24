import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart'; 
import 'providers/transactions.dart'; 
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => TransactionsProvider(),
      child: MaterialApp(
        title: 'Expense Tracker',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false, 
      ),
    );
  }
}
