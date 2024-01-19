import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prototype_cluster/pages/registration_page.dart';

import 'components/local_business_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => LocalBusinessProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RegisterPage(),
    );
  }
}
