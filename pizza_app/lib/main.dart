import 'package:flutter/material.dart';
import 'package:pizza_app/providers/navigation_provider.dart';
import 'package:pizza_app/providers/stock_provider.dart';
import 'package:pizza_app/routes/home_screen.dart';
import 'package:pizza_app/widgets/core/screen_size.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenSize.height = MediaQuery.of(context).size.height;
    ScreenSize.width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NavigationProvider()),
          ChangeNotifierProvider(create: (_) => StockProvider()),
        ],
        child: const MaterialApp(
          title: 'Pizza App',
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}

