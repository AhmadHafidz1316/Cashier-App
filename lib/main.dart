import 'package:cashier_app/Pages/cashier_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Cashier App",
      home:  CashierPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

  