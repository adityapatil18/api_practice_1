import 'package:api_practice1/screens/home_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(APIPractice1());
}

class APIPractice1 extends StatelessWidget {
  const APIPractice1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:HomePage() ,);
  }
}