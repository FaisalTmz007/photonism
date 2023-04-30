import 'package:flutter/material.dart';

import 'login_view.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const routePage(),
    );
  }
}

class routePage extends StatefulWidget {
  const routePage({super.key});

  @override
  State<routePage> createState() => _routePageState();
}

class _routePageState extends State<routePage> {
  bool _isLoggedin = false;
  dynamic user;
  @override
  void initState() {
    if (user != null) {
      setState(() {
        _isLoggedin = true;
      });
    } else {
      setState(() {
        _isLoggedin = false;
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoginView();
  }
}
