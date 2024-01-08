import 'package:e_commerce/config/network/networkRequest.dart';
import 'package:e_commerce/feature/cart_page/domain/cart_provider.dart';
import 'package:e_commerce/feature/home_page/presentation/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NetworkRequest();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100.0),
              ),
            ),
            color: Color.fromRGBO(255, 100, 19, 0.498),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}
