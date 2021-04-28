import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rex_mobile/RouteGenerator.dart';
import 'package:rex_mobile/ThemeProvider.dart';
import 'package:rex_mobile/models/Global.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<GlobalModel>(
      create: (context) => GlobalModel(),
      child: MaterialApp(
        title: 'Rex',
        theme: ThemeProvider.getTheme(),
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
