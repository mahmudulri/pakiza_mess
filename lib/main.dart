import 'package:flutter/material.dart';
import 'package:pakiza_mess/pages/draft.dart';
import 'package:pakiza_mess/pages/login_page.dart';

import 'package:pakiza_mess/pages/registration_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pakiza Mess Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Draftpage());
  }
}
