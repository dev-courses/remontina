import 'package:flutter/material.dart';
import 'package:remontina/internal/routes/routes.dart';
import 'package:remontina/presentation/root/root_screen.dart';

class Application extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  _ApplicationState() {
    Routes.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remontina',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Routes.router.generator,
      home: RootScreen(),
    );
  }
}
