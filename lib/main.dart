import 'package:flutter/material.dart';
import 'consts/router.dart';

void main(List<String> args) {
  runApp(const Undigitally());
}

class Undigitally extends StatelessWidget {
  const Undigitally({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Undigitally',
      theme: ThemeData(
        useMaterial3: true,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        fontFamily: 'Montserrat',
        colorScheme: const ColorScheme.light(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
